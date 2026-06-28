# Assignment 2: Lottery Scheduler & User-Space Utilities on xv6

This project extends the **vanilla xv6 (ARM) operating system** with a new
process scheduler and several user-space utilities. The headline feature is a
**boosted lottery scheduler** that replaces xv6's default round-robin policy.

The sections below follow the same structure as the other assignments: what
vanilla xv6 supports, what each feature adds, where the code lives, and how it is
tested.

---

## User-Space Utilities

Small commands added on top of stock xv6:

- **`uptime`**: prints how long the system has been running, in seconds.
- **`pause <n>`**: pauses the shell for `n` seconds.
- **`ps`**: prints the list of all running processes.
- **`pstat`**: prints per-process scheduler statistics (pid, tickets, run-ticks,
  boosts left) by calling `getpinfo()`.
- **Tab auto-complete** in the shell: typing a partial command and pressing
  `Tab` lists the matching commands.

---

## Lottery Scheduler

### What vanilla xv6 supports

Stock xv6 uses a simple **Round-Robin (RR)** scheduler. With three processes
A, B, C it runs them in the fixed order `A B C A B C ...`, giving each process
one timer tick (~10 ms) before moving on. Every process gets an equal slice of
the CPU regardless of importance, and there is no way to give one process a
larger share than another.

Vanilla xv6 also has two related weaknesses this assignment addresses:

- It has **no proportional-share** mechanism: you cannot say "process A should
  get 75% of the CPU."
- Its `sleep()` implementation **wakes every sleeping process on every tick**
  just to check whether enough time has passed, which wastes scheduling
  decisions.

### What this feature adds

A **boosted lottery scheduler** that gives each process a share of the CPU
proportional to the number of *tickets* it holds:

1. **Lottery per tick.** On every timer tick the scheduler holds a lottery among
   the `RUNNABLE` processes. Each process's chance of winning is
   `its_tickets / total_tickets`, so a process with 30 tickets runs roughly 3x as
   often as one with 10. New processes inherit their parent's ticket count; the
   first process starts with 1 ticket.

2. **Compensation for blocking (boost).** When a process sleeps for `x` ticks,
   its tickets are *doubled* for the next `x` lotteries it participates in after
   it wakes. This keeps its long-run CPU share proportional to its tickets even
   though it couldn't compete while blocked. Boosts accumulate: if a process
   sleeps again before using up its remaining boosts, the new boost is added to
   what was left.

3. **Improved sleep/wake.** `wakeup1()` was changed so a process sleeping on
   `&ticks` is only woken once its sleep interval has actually elapsed, instead
   of being falsely woken every tick. This stops sleeping processes from
   wastefully entering (and burning a boosted round in) the lottery.

So whereas vanilla xv6 could only split the CPU equally, this scheduler can now
give important processes a larger, configurable share while still being fair to
processes that block on I/O.

### New system calls

| System call | Purpose |
|-------------|---------|
| `int settickets(int pid, int n_tickets)` | Set the tickets for a process. Returns 0 on success, -1 if the pid is invalid or `n_tickets` is not positive. |
| `int getpinfo(struct pstat *)` | Copy per-process scheduler stats (inuse, pid, tickets, runticks, boostsleft) out to user space so tests can inspect the scheduler. Returns 0 / -1. |
| `void srand(uint seed)` | Seed the kernel random-number generator (`rseed`) used by the lottery. |

`struct pstat` is defined in `pstat.h`. During a boost, `getpinfo` reports the
process's *original* ticket count (not the doubled value).

### Where the code is

| Location | Change |
|----------|--------|
| `proc.c` (`rand` / `rseed`) | Linear-congruential RNG used to draw the winning ticket. |
| `proc.c` (`hold_lottery`) | Draws a random winning ticket number and walks the process table, summing each runnable process's (boosted) tickets until the winner is found. |
| `proc.c` (`scheduler`) | Sums total runnable tickets, calls `hold_lottery()` to pick a winner instead of round-robin, runs it, and increments its `runticks`. |
| `proc.c` (`wakeup1`) | Extra condition checking so a process waiting on `&ticks` is only woken at the right time, and tracks how long it slept to compute its boost. |
| `proc.h` | New `struct proc` fields: `tickets`, `runticks`, `boostsleft` (and sleep-tracking fields). |
| `proc.c` (`fork`/`allocproc`) | Children inherit the parent's tickets; new processes start with sensible defaults; boosts are **not** inherited. |
| `proc.c` (`settickets`) | Kernel side of the `settickets` syscall. |
| `sysproc.c` | `sys_settickets`, `sys_getpinfo`, `sys_srand` wrappers; `sys_sleep` works with the improved wake mechanism. |
| `pstat.h` | `struct pstat` definition shared between kernel and user space. |
| `syscall.c`, `syscall.h`, `usr/usys.S`, `usr/user.h` | Registration of the three new system calls. |

### How it is tested

`usr/lottery_test.c` demonstrates the proportional-share property directly:

1. The parent gives **itself** a very large ticket count, then forks two
   CPU-bound children and gives them tickets in a **3:1 ratio** (A = 30,
   B = 10) via `settickets()`. (The large parent count guarantees the parent
   wins the lottery when it wakes to print, instead of being starved by the
   busy children. While the parent sleeps it is out of the lottery, so this
   does not affect the measured A:B ratio.)
2. Both children spin in a busy loop so they stay `RUNNABLE` and keep entering
   the lottery.
3. The parent sleeps for `RUN_TICKS` ticks while only the children compete,
   then calls `getpinfo()` and reads each child's `runticks` (the number of
   timer ticks it was actually scheduled).
4. It prints the expected vs. observed CPU share. Process A (more tickets) gets
   visibly more CPU than B.

```bash
$ lottery_test
lottery_test: A gets 30 tickets, B gets 10 tickets (ratio 3:1)

=== Lottery results after 30 ticks ===
A (pid 4): 19 run-ticks
B (pid 5): 12 run-ticks
Expected A share = 75%, Observed A share = 61%
(A should run roughly 3 times as much as B)
```

A clearly receives more CPU than B, confirming the lottery scheduler honours
ticket counts. The observed ratio is only **approximate** (not exactly 3:1) for
two reasons inherent to this code base:

- The clock runs at **`HZ = 1`** (one timer tick per second), so a run only
  yields a few dozen lottery draws — a small statistical sample. This also means
  the test takes ~30 seconds of wall-clock time to finish.
- The kernel's lottery uses the assignment-provided `rand()` (a simple linear
  congruential generator that is never seeded via `srand`). Its low-order bits
  are not very uniform when reduced modulo the ticket total, which skews the
  short-run distribution.

You can also inspect live scheduler state at any time with the `pstat` command,
which dumps each process's tickets, run-ticks, and remaining boosts.

> Note: `usr/test.c` is an earlier, more verbose debug version of the same
> experiment (it samples the share once per second over 20 seconds). The clean,
> self-checking test above is `usr/lottery_test.c`.

### A required kernel fix for preemption

While testing, the lottery scheduler was found to **never preempt a CPU-bound
process**: the timer interrupt incremented `ticks` and woke sleepers, but
nothing forced the running process to give up the CPU, so `yield()` (defined in
`proc.c`) was never actually called. A process that never slept would run
forever and the scheduler would never hold another lottery — `lottery_test`
appeared to hang.

The fix is in `trap.c` (`irq_handler`): after dispatching the interrupt, if a
user process was running it now calls `yield()`, so the scheduler runs a fresh
lottery on every timer tick. This is what makes the scheduler preemptive (and is
required for round-robin / lottery scheduling of CPU-bound jobs to work at all).

---

## Building and Running

```bash
make clean
make
qemu-system-arm -M versatilepb -m 128 -cpu arm1176 -nographic -kernel kernel.elf
```

At the xv6 shell prompt:

```bash
$ lottery_test     # demonstrate proportional CPU sharing
$ pstat            # dump per-process scheduler statistics
```
