# Assignment 4: Synchronization & Threads on xv6

This project extends the **vanilla xv6 (ARM) operating system** with kernel-level
support for user threads and a set of synchronization primitives that stock xv6
does not provide. Vanilla xv6 only ships with `fork()`-based processes and the
internal `sleep()/wakeup()` mechanism; everything listed below was added on top of
it.

---

## Features Added Compared to Vanilla xv6

### 1. Threads

Lightweight threads that share the parent process's address space (unlike `fork()`,
which copies it). New user-facing calls:

| Call | Purpose |
|------|---------|
| `thread_create(&tid, fn, arg)` | Create a thread running `fn(arg)`, sharing the caller's page tables; returns the new thread id in `tid`. |
| `thread_join(tid)` | Block until the given thread finishes (analogous to `wait()` but for threads). |
| `thread_exit()` | Terminate the calling thread without tearing down the shared address space. |

### 2. Spinlock / Mutex Lock (user-level lock)

A user-accessible `struct lock` with init/acquire/release operations for mutual
exclusion between threads:
`initiateLock()`, `acquireLock()`, `releaseLock()`.

### 3. Condition Variables

Condition-variable primitives layered on top of the lock, allowing threads to
wait for and signal a condition:
`initiateCondVar()`, `condWait(cv, lock)`, `broadcast(cv)`.

### 4. Semaphores

Counting semaphores built from a lock + condition variable, with the classic
down/up (P/V) operations:
`semInit(s, initVal)`, `semDown()`, `semUp()`.

### 5. Barrier

A process barrier that blocks every participant until a fixed number of them have
arrived, then releases them together:
`barrier_init(n)`, `barrier_check()`.

### 6. Channel-based Sleep/Wakeup (exposed to user space)

Vanilla xv6 keeps `sleep`/`wakeup` strictly inside the kernel. Here they are
exposed via channels so user programs can sleep on and signal a channel:
`getChannel()`, `sleepChan()`, `sigChan()` (wake all), `sigOneChan()` (wake one).

### 7. `waitpid()`

A targeted version of `wait()` that reaps a **specific** child by pid instead of
any child.

---

## Test Programs

Each `t_*` program in `OS/usr/` exercises one of the new features.

- **`t_threads`**: Basic thread sanity test. Creates two threads sharing a variable
  `x`, checks that `thread_create`, `thread_exit`, and `thread_join` work and that
  writes by a thread are visible to the parent (shared address space).

- **`t_lock`**: Mutual-exclusion correctness test. Two threads each increment a
  shared counter 1,000,000 times under `acquireLock`/`releaseLock`. With a correct
  lock the final value must be exactly 2,000,000 (proves no lost updates / race).

- **`t_l_cv1`**: Lock + condition variable test (single signal). Main thread holds
  the lock and `condWait`s; a worker thread acquires the lock, updates `x`, and
  `broadcast`s to wake main. Verifies wait/broadcast hand-off and the final value of `x`.

- **`t_l_cv2`**: Condition variable ping-pong. Two threads alternate printing using a
  shared flag, each `condWait`-ing while it is not their turn and `broadcast`-ing the
  other. Verifies strict alternation over many iterations (no missed wakeups).

- **`t_sem1`**: Basic semaphore (mutex use). A semaphore initialized to 1 is used as a
  binary lock around an update to shared `x` via `semDown`/`semUp`. Checks basic
  acquire/release behavior.

- **`t_sem2`**: Semaphore-based ordering/signalling. Three threads coordinate through two
  semaphores so that a controller thread prints first and then releases the other two one
  at a time, even though it sleeps. Verifies that semaphore counting enforces ordering
  regardless of scheduling.

- **`t_barrier`**: Barrier test. A parent and two children (with different sleep delays)
  all call `barrier_check()` after `barrier_init(3)`. Confirms that no process passes
  "cleared barrier" until all three have reached the barrier.

- **`t_sleepwake`**: Channel sleep/wakeup test. Parent obtains a channel, sleeps on it with
  `sleepChan`; the child wakes it with `sigChan`. Verifies user-space sleep/signal on a channel.

- **`t_waitpid`**: `waitpid` test. Forks a child and calls `waitpid` with a wrong pid (should
  fail) and the correct pid (should reap it), then a plain `wait`. Verifies targeted child
  reaping and the return values for valid vs. invalid pids.
