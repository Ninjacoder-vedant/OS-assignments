#include "types.h"
#include "arm.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

#include "barrier.h"

int sys_fork(void)
{
    return fork();
}

int sys_exit(void)
{
    exit();
    return 0;  // not reached
}

int sys_wait(void)
{
    return wait();
}

int sys_kill(void)
{
    int pid;

    if(argint(0, &pid) < 0) {
        return -1;
    }

    return kill(pid);
}

int sys_getpid(void)
{
    return proc->pid;
}

int sys_sbrk(void)
{
    int addr;
    int n;

    if(argint(0, &n) < 0) {
        return -1;
    }

    addr = proc->sz;

    if(growproc(n) < 0) {
        return -1;
    }

    return addr;
}

int sys_sleep(void)
{
    int n;
    uint ticks0;

    if(argint(0, &n) < 0) {
        return -1;
    }

    acquire(&tickslock);

    ticks0 = ticks;

    while(ticks - ticks0 < n){
        if(proc->killed){
            release(&tickslock);
            return -1;
        }

        sleep(&ticks, &tickslock);
    }

    release(&tickslock);
    return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int sys_uptime(void)
{
    uint xticks;

    acquire(&tickslock);
    xticks = ticks;
    release(&tickslock);

    return xticks;
}


//// New code goes here

int
sys_thread_create(void)
{
  int *utidptr;
  void *(*start_routine)(void *);
  void *arg;

  if (argptr(0, (char **)&utidptr, sizeof(utidptr)) < 0)
    return -1;
  if (argptr(1, (char **)&start_routine, sizeof(start_routine)) < 0)
    return -1;
  if (argptr(2, (char **)&arg, sizeof(arg)) < 0)
    return -1;

  return thread_create(utidptr, start_routine, arg);
}



int
sys_thread_exit(void)
{
  // thread_exit does not take arguments in your description
  thread_exit();
  return 0; // not reached
}



int
sys_thread_join(void)
{
  int tid;
  if (argint(0, &tid) < 0)
    return -1;
  return thread_join(tid);
}


int sys_barrier_init(void)
{
    int n;

    if(argint(0, &n) < 0) {
        return -1;
    }

  barrier_init(n);
  return 0;
}

int sys_barrier_check(void)
{
  barrier_check();
  return 0;
}

int sys_waitpid(void)
{
  return -1;
}

int sys_sleepChan(void) {
  int chan;
  if (argint(0, &chan) < 0)
    return -1;
  sleepChan(chan);
  return 0;
}

int sys_getChannel(void) {
  return getChannel();
}

int sys_sigChan(void) {
  int chan;
  if (argint(0, &chan) < 0)
    return -1;
  sigChan(chan);
  return 0;
}

int sys_sigOneChan(void) {
  int chan;
  if (argint(0, &chan) < 0)
    return -1;
  sigOneChan(chan);
  return 0;
}

int sys_yield(void) {
  yield();
  return 0;
}