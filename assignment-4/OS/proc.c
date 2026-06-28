#include "types.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "arm.h"
#include "proc.h"
#include "spinlock.h"

//
// Process initialization:
// process initialize is somewhat tricky.
//  1. We need to fake the kernel stack of a new process as if the process
//     has been interrupt (a trapframe on the stack), this would allow us
//     to "return" to the correct user instruction.
//  2. We also need to fake the kernel execution for this new process. When
//     swtch switches to this (new) process, it will switch to its stack,
//     and reload registers with the saved context. We use forkret as the
//     return address (in lr register). (In x86, it will be the return address
//     pushed on the stack by the process.)
//
// The design of context switch in xv6 is interesting: after initialization,
// each CPU executes in the scheduler() function. The context switch is not
// between two processes, but instead, between the scheduler. Think of scheduler
// as the idle process.
//
struct {
    struct spinlock lock;
    struct proc proc[NPROC];
} ptable;

static struct proc *initproc;
struct proc *proc;

int nextpid = 1;
extern void forkret(void);
extern void trapret(void);

static void wakeup1(void *chan);

void pinit(void)
{
    initlock(&ptable.lock, "ptable");
}

//PAGEBREAK: 32
// Look in the process table for an UNUSED proc.
// If found, change state to EMBRYO and initialize
// state required to run in the kernel.
// Otherwise return 0.
static struct proc* allocproc(void)
{
    struct proc *p;
    char *sp;

    acquire(&ptable.lock);

    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if(p->state == UNUSED) {
            goto found;
        }

    }

    release(&ptable.lock);
    return 0;

    found:
    // not a thread
    p->is_thread = 0;

    p->state = EMBRYO;
    p->pid = nextpid++;
    release(&ptable.lock);

    // Allocate kernel stack.
    if((p->kstack = alloc_page ()) == 0){
        p->state = UNUSED;
        return 0;
    }

    sp = p->kstack + KSTACKSIZE;

    // Leave room for trap frame.
    sp -= sizeof (*p->tf);
    p->tf = (struct trapframe*)sp;

    // Set up new context to start executing at forkret,
    // which returns to trapret.
    sp -= 4;
    *(uint*)sp = (uint)trapret;

    sp -= 4;
    *(uint*)sp = (uint)p->kstack + KSTACKSIZE;

    sp -= sizeof (*p->context);
    p->context = (struct context*)sp;
    memset(p->context, 0, sizeof(*p->context));

    // skip the push {fp, lr} instruction in the prologue of forkret.
    // This is different from x86, in which the harderware pushes return
    // address before executing the callee. In ARM, return address is
    // loaded into the lr register, and push to the stack by the callee
    // (if and when necessary). We need to skip that instruction and let
    // it use our implementation.
    p->context->lr = (uint)forkret+4;

    return p;
}

void error_init ()
{
    panic ("failed to craft first process\n");
}


//PAGEBREAK: 32
// hand-craft the first user process. We link initcode.S into the kernel
// as a binary, the linker will generate __binary_initcode_start/_size
void userinit(void)
{
    struct proc *p;
    extern char _binary_initcode_start[], _binary_initcode_size[];

    p = allocproc();
    initproc = p;

    if((p->pgdir = kpt_alloc()) == NULL) {
        panic("userinit: out of memory?");
    }

    inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);

    p->sz = PTE_SZ;

    // craft the trapframe as if
    memset(p->tf, 0, sizeof(*p->tf));

    p->tf->r14_svc = (uint)error_init;
    p->tf->spsr = spsr_usr ();
    p->tf->sp_usr = PTE_SZ;	// set the user stack
    p->tf->lr_usr = 0;

    // set the user pc. The actual pc loaded into r15_usr is in
    // p->tf, the trapframe.
    p->tf->pc = 0;					// beginning of initcode.S

    safestrcpy(p->name, "initcode", sizeof(p->name));
    p->cwd = namei("/");

    p->state = RUNNABLE;
}

// Grow current process's memory by n bytes.
// Return 0 on success, -1 on failure.
int growproc(int n)
{
    uint sz;

    sz = proc->sz;

    if(n > 0){
        if((sz = allocuvm(proc->pgdir, sz, sz + n)) == 0) {
            return -1;
        }

    } else if(n < 0){
        if((sz = deallocuvm(proc->pgdir, sz, sz + n)) == 0) {
            return -1;
        }
    }

    proc->sz = sz;
    switchuvm(proc);

    return 0;
}

// Create a new process copying p as the parent.
// Sets up stack to return as if from system call.
// Caller must set state of returned proc to RUNNABLE.
int fork(void)
{
    int i, pid;
    struct proc *np;

    // Allocate process.
    if((np = allocproc()) == 0) {
        return -1;
    }

    // Copy process state from p.
    if((np->pgdir = copyuvm(proc->pgdir, proc->sz)) == 0){
        free_page(np->kstack);
        np->kstack = 0;
        np->state = UNUSED;
        return -1;
    }

    np->sz = proc->sz;
    np->parent = proc;
    *np->tf = *proc->tf;

    // Clear r0 so that fork returns 0 in the child.
    np->tf->r0 = 0;

    for(i = 0; i < NOFILE; i++) {
        if(proc->ofile[i]) {
            np->ofile[i] = filedup(proc->ofile[i]);
        }
    }

    np->cwd = idup(proc->cwd);

    pid = np->pid;
    np->state = RUNNABLE;
    safestrcpy(np->name, proc->name, sizeof(proc->name));

    return pid;
}

// Exit the current process.  Does not return.
// An exited process remains in the zombie state
// until its parent calls wait() to find out it exited.
void exit(void)
{
    struct proc *p;
    int fd;

    if(proc == initproc) {
        panic("init exiting");
    }

    // Close all open files.
    for(fd = 0; fd < NOFILE; fd++){
        if(proc->ofile[fd]){
            fileclose(proc->ofile[fd]);
            proc->ofile[fd] = 0;
        }
    }

    iput(proc->cwd);
    proc->cwd = 0;

    acquire(&ptable.lock);

    // Parent might be sleeping in wait().
    wakeup1(proc->parent);

    // Pass abandoned children to init.
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
        if(p->parent == proc){
            p->parent = initproc;

            if(p->state == ZOMBIE) {
                wakeup1(initproc);
            }
        }
    }

    // Jump into the scheduler, never to return.
    proc->state = ZOMBIE;
    sched();

    panic("zombie exit");
}

// Wait for a child process to exit and return its pid.
// Return -1 if this process has no children.
int wait(void)
{
    struct proc *p;
    int havekids, pid;

    acquire(&ptable.lock);

    for(;;){
        // Scan through table looking for zombie children.
        havekids = 0;

        for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
            if(p->parent != proc) {
                continue;
            }

            havekids = 1;

            if(p->state == ZOMBIE){
                // Found one.
                pid = p->pid;
                free_page(p->kstack);
                p->kstack = 0;
                freevm(p->pgdir);
                p->state = UNUSED;
                p->pid = 0;
                p->parent = 0;
                p->name[0] = 0;
                p->killed = 0;
                release(&ptable.lock);

                return pid;
            }
        }

        // No point waiting if we don't have any children.
        if(!havekids || proc->killed){
            release(&ptable.lock);
            return -1;
        }

        // Wait for children to exit.  (See wakeup1 call in proc_exit.)
        sleep(proc, &ptable.lock);  //DOC: wait-sleep
    }
}

//PAGEBREAK: 42
// Per-CPU process scheduler.
// Each CPU calls scheduler() after setting itself up.
// Scheduler never returns.  It loops, doing:
//  - choose a process to run
//  - swtch to start running that process
//  - eventually that process transfers control
//      via swtch back to the scheduler.
void
scheduler(void)
{
  struct proc *p;
  int i, start;
  static int rr_next = 0; // index in ptable.proc where we should start next

  for(;;){
    // Enable interrupts on this processor.
    sti();

    acquire(&ptable.lock);

    /* Start scanning from rr_next, look at every slot exactly once.
       This implements round-robin over the proc table indices. */
    start = rr_next;
    p = 0;
    for(i = 0; i < NPROC; i++){
      int idx = (start + i) % NPROC;
      struct proc *pp = &ptable.proc[idx];
      if(pp->state != RUNNABLE)
        continue;

      /* select this process */
      p = pp;
      /* advance rr_next so next schedule starts after this proc */
      rr_next = (idx + 1) % NPROC;
      break;
    }

    if(p != 0){
      /* Switch to chosen process.
         It is the process's responsibility to release ptable.lock
         (or change its state) before switching back. */
      proc = p;
      switchuvm(p);
      p->state = RUNNING;
      swtch(&cpu->scheduler, proc->context);
      /* When the process yields/blocks and swtch returns, proc should
         have been set to 0 by the return path. Reset local proc pointer. */
      proc = 0;
    }

    release(&ptable.lock);
  }
}

// Enter scheduler.  Must hold only ptable.lock
// and have changed proc->state.
void sched(void)
{
    int intena;

    //show_callstk ("sched");

    if(!holding(&ptable.lock)) {
        panic("sched ptable.lock");
    }

    if(cpu->ncli != 1) {
        panic("sched locks");
    }

    if(proc->state == RUNNING) {
        panic("sched running");
    }

    if(int_enabled ()) {
        panic("sched interruptible");
    }

    intena = cpu->intena;
    swtch(&proc->context, cpu->scheduler);
    cpu->intena = intena;
}

// Give up the CPU for one scheduling round.
void yield(void)
{
    acquire(&ptable.lock);  //DOC: yieldlock
    proc->state = RUNNABLE;
    sched();
    release(&ptable.lock);
}

// A fork child's very first scheduling by scheduler()
// will swtch here.  "Return" to user space.
void forkret(void)
{
    static int first = 1;

    // Still holding ptable.lock from scheduler.
    release(&ptable.lock);

    if (first) {
        // Some initialization functions must be run in the context
        // of a regular process (e.g., they call sleep), and thus cannot
        // be run from main().
        first = 0;
        initlog();
    }

    // Return to "caller", actually trapret (see allocproc).
}

// Atomically release lock and sleep on chan.
// Reacquires lock when awakened.
void sleep(void *chan, struct spinlock *lk)
{
    //show_callstk("sleep");

    if(proc == 0) {
        panic("sleep");
    }

    if(lk == 0) {
        panic("sleep without lk");
    }

    // Must acquire ptable.lock in order to change p->state and then call
    // sched. Once we hold ptable.lock, we can be guaranteed that we won't
    // miss any wakeup (wakeup runs with ptable.lock locked), so it's okay
    // to release lk.
    if(lk != &ptable.lock){  //DOC: sleeplock0
        acquire(&ptable.lock);  //DOC: sleeplock1
        release(lk);
    }

    // Go to sleep.
    proc->chan = chan;
    proc->state = SLEEPING;
    sched();

    // Tidy up.
    proc->chan = 0;

    // Reacquire original lock.
    if(lk != &ptable.lock){  //DOC: sleeplock2
        release(&ptable.lock);
        acquire(lk);
    }
}

//PAGEBREAK!
// Wake up all processes sleeping on chan. The ptable lock must be held.
static void wakeup1(void *chan)
{
    struct proc *p;

    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if(p->state == SLEEPING && p->chan == chan) {
            p->state = RUNNABLE;
        }
    }
}

// Wake up all processes sleeping on chan.
void wakeup(void *chan)
{
    acquire(&ptable.lock);
    wakeup1(chan);
    release(&ptable.lock);
}

// Kill the process with the given pid. Process won't exit until it returns
// to user space (see trap in trap.c).
int kill(int pid)
{
    struct proc *p;

    acquire(&ptable.lock);

    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
        if(p->pid == pid){
            p->killed = 1;

            // Wake process from sleep if necessary.
            if(p->state == SLEEPING) {
                p->state = RUNNABLE;
            }

            release(&ptable.lock);
            return 0;
        }
    }

    release(&ptable.lock);
    return -1;
}

//PAGEBREAK: 36
// Print a process listing to console.  For debugging. Runs when user
// types ^P on console. No lock to avoid wedging a stuck machine further.
void procdump(void)
{
    static char *states[] = {
            [UNUSED]    "unused",
            [EMBRYO]    "embryo",
            [SLEEPING]  "sleep ",
            [RUNNABLE]  "runble",
            [RUNNING]   "run   ",
            [ZOMBIE]    "zombie"
    };

    struct proc *p;
    char *state;

    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
        if(p->state == UNUSED) {
            continue;
        }

        if(p->state >= 0 && p->state < NELEM(states) && states[p->state]) {
            state = states[p->state];
        } else {
            state = "???";
        }

        cprintf("%d %s %s\n", p->pid, state, p->name);
    }

    show_callstk("procdump: \n");
}


#define PGSIZE 4096

/*
void * means a pointer without a type
void ** means a pointer to a pointer 
so this pointer to a pointer points to the functino to bw executed
and that takes args as opinter to arguments

*/

int 
thread_create(int *utidptr, void *(*start_routine)(void *), void *arg)
{
// cprintf("Inside thread_create\n");
  struct proc *np; // create a newprocess
  struct proc *cur = proc; // pointer to thte current process
  uint sp; // stack pointer pointing to the instruction 
  uint argaddr;   // where we copy the arg on user's stack
  int tid; // tid thread id

  // allocate proc table slot & kernel stack etc.
  acquire(&ptable.lock); // aquire the ptable lock
  np = allocproc(); // allocate the proccesss
  if (np == 0) {
        // if not allocated then return
    release(&ptable.lock);
    return -1;
  }

  // share address space and size with parent (threads share pgdir)
  // NOTE: do NOT call copyuvm. Keep same pgdir.
  // Keep proc fields that should be separate:
  np->pgdir = cur->pgdir;      // share page directory
  np->sz = cur->sz;            // current size of address space
    
  np->is_thread = 1; // mark it as a thread

    // copy file descriptors and cwd from parent so printf/write works
    // because it was not printing to the console
  for (int i = 0; i < NOFILE; i++) {
    if (cur->ofile[i])
      np->ofile[i] = filedup(cur->ofile[i]);
    else
      np->ofile[i] = 0;
  }

  if (cur->cwd)
    np->cwd = idup(cur->cwd);
  else
    np->cwd = 0;

  safestrcpy(np->name, cur->name, sizeof(np->name));

  // main_tid: if current is already a thread, use its main_tid; else current->pid
  np->main_tid = (cur->is_thread ? cur->main_tid : cur->pid);
  np->parent = cur;            // parent in proc table for bookkeeping
  np->ustack = 0;
  np->joined = 0;

  // copy trapframe from parent so registers etc. are copied
  *np->tf = *cur->tf;

  // allocate a single user page for the new thread stack
  // use current->sz as the new page base (allocate at top of current size)
  uint oldsz = cur->sz;
  if (allocuvm(cur->pgdir, oldsz, oldsz + PGSIZE) == 0) {
    // allocation failed -> rollback
    np->state = UNUSED;
    release(&ptable.lock);
    return -1;
  }
  // update size for all threads in this address space
  // (we must update cur->sz and all thread->sz so they observe the new top)
  // simplest: set cur->sz and np->sz (if you have a proc list of same pgdir,
  // update their sz too; many implementations keep one authoritative sz).
  cur->sz = oldsz + PGSIZE;
  np->sz = oldsz + PGSIZE;

  // record the user stack base for this thread (the page we just allocated)
  np->ustack = (void*)oldsz;  // stack page base (grows upwards to oldsz+PGSIZE)

  // set up child's user stack:
  // stack top = oldsz + PGSIZE
  sp = oldsz + PGSIZE;

  // make room for the return address (fake) and for argument
  // align stack to 4 bytes
  sp -= 4;                // fake return address
  sp -= sizeof(uint);     // space for the argument pointer / value (we pass arg as value)
  sp &= ~3;

  argaddr = sp; // user virtual address where arg will be stored

  // copy the argument into the child's user stack
  if (copyout(cur->pgdir, argaddr, (char*)&arg, sizeof(arg)) < 0) {
    // copy failed -> rollback (deallocuvm to free page)
    deallocuvm(cur->pgdir, oldsz + PGSIZE, oldsz);
    np->ustack = 0;
    np->state = UNUSED;
    release(&ptable.lock);
    return -1;
  }

  // set child's registers so it begins execution at start_routine(arg)
  np->tf->pc = (uint) start_routine;  // start executing at function
  np->tf->r0 = (uint)arg;               // r0 contains the arguments to be given 
  np->tf->sp_usr = sp;                    // stack pointer points to the arg slot
  np->tf->lr_usr = 0;
  // when the thread begins, it will "return" to the fake return address, so set a harmless value
  *((uint*) (sp + sizeof(uint))) = 0;   // optional: write fake return val

  // expose tid to user by copying np->pid to *utidptr (both share address space)
  tid = np->pid;
  if (copyout(cur->pgdir, (uint)utidptr, (char*)&tid, sizeof(tid)) < 0) {
    // rollback similar to above
    deallocuvm(cur->pgdir, oldsz + PGSIZE, oldsz);
    np->ustack = 0;
    np->state = UNUSED;
    release(&ptable.lock);
    return -1;
  }

  // finalize state to RUNNABLE and release lock
  np->state = RUNNABLE;
  // cprintf("exiting\n");

  release(&ptable.lock);
  return tid;
}


// called by sys_thread_exit
int
thread_exit(void)
{
  struct proc *cur = proc;
  // struct proc  *p;

  if (!cur->is_thread) {
    // calling thread_exit in main thread -> behave like nop per your spec
    return -1;
  }

  acquire(&ptable.lock);

  // mark as ZOMBIE (do not free shared address space yet)
  cur->state = ZOMBIE;

  // wake up the process that may be waiting in thread_join (likely cur->parent or main)
  wakeup1(cur);              // wakeup any waiters on the proc struct
  // also wake up the main thread and parent to signal exit part
  wakeup1(cur->parent);
  wakeup1(&cur->main_tid); // optional: if you sleep on that channel

  // schedule out; this process will remain in ZOMBIE until joined
  sched();
  // not reached
  release(&ptable.lock);
  return 0;
}   


int
thread_join(int tid)
{
  struct proc *p;
  struct proc *cur = proc;
  int found = 0;

  acquire(&ptable.lock);
  for(;;){
    // scan process table for the tid belonging to the same address space (main_tid)
    found = 0;
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
      if(p->pid != tid) continue;
      // ensure it's a thread of the caller's process (main thread matches)
      if(!p->is_thread) continue;
      if(p->main_tid != (cur->is_thread ? cur->main_tid : cur->pid)) continue;

      found = 1;

      // if it is ZOMBIE, we can reap
      if(p->state == ZOMBIE){
        // free per-thread resources
        // 1) free kernel stack created by allocproc
         kfree(p->kstack,PT_ORDER);
        p->kstack = 0;
        // 2) free user stack page if recorded
        if(p->ustack){
          // p->ustack holds the base virtual address (oldsz)
          deallocuvm(cur->pgdir, (uint)p->ustack + PGSIZE, (uint)p->ustack);
          p->ustack = 0;
        }
        // mark process table entry unused
        p->state = UNUSED;
        p->pid = 0;
        p->parent = 0;
        p->is_thread = 0;
        release(&ptable.lock);
        return 0; // success
      }
    }

    if(!found){
      // no such child thread
      release(&ptable.lock);
      return -1;
    }

    // otherwise sleep until thread changes state to ZOMBIE
    sleep(cur, &ptable.lock); // sleep on current proc (or some other channel)
  }
}

#define CHAN_BASE 3456

struct spinlock chanlock;
static int nextchan = CHAN_BASE;

int getChannel(void)
{
    acquire(&chanlock);
    int chan = nextchan++;
    release(&chanlock);
    return chan;
}

static int chan_is_valid_locked(int chan)
{
  return (chan >= CHAN_BASE && chan < nextchan);
}

void sleepChan(int chan)
{
    acquire(&chanlock);
    if(!chan_is_valid_locked(chan)){
        release(&chanlock);
        cprintf("sleepChan: invalid channel %d\n", chan);
        return;
    }
    sleep((void*)chan,&chanlock);
    release(&chanlock);
}

void sigChan(int chan)
{
    acquire(&chanlock);
    if(!chan_is_valid_locked(chan)){
        release(&chanlock);
        cprintf("sigChan: invalid channel %d\n", chan);
        return;
    }
    wakeup((void*)chan);
    release(&chanlock);
}

void sigOneChan(int chan)
{
    acquire(&ptable.lock);
    struct proc *p;

    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if(p->state == SLEEPING && p->chan == (void*)chan) {
            p->state = RUNNABLE;
            break;
        }
    }
    release(&ptable.lock);
}
