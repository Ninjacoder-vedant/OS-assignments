// lottery_test.c
//
// Demonstrates that the lottery scheduler gives each process a share of the
// CPU that is roughly proportional to the number of tickets it holds.
//
// It forks two CPU-bound children, gives them tickets in a 3:1 ratio
// (A = 30 tickets, B = 10 tickets), lets them spin for a while, then uses
// getpinfo() to read how many timer ticks each was actually scheduled for.
// If the scheduler is working, A should run about 3x as often as B
// (i.e. ~75% of the CPU vs ~25%).

#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"

#define TICKETS_A      30
#define TICKETS_B      10
#define TICKETS_PARENT 100000  // huge, so the parent reliably wins the lottery
                               // when it wakes up to sample/print the results
#define RUN_TICKS      30      // how long to let the children spin (timer ticks).
                               // NOTE: the clock runs at HZ=1 (1 tick/second),
                               // so this test takes ~30 seconds to finish. A (more
                               // tickets) clearly gets more CPU than B; the ratio
                               // is only approximate because the kernel's provided
                               // rand() (a simple LCG, never seeded) is not very
                               // uniform mod the ticket total, and HZ=1 gives only
                               // a small number of lottery draws.

// Pure CPU work so the process stays RUNNABLE and keeps entering the lottery.
static void
spin_forever(void)
{
  volatile unsigned long x = 0;
  for (;;)
    x++;
  (void)x; // avoid compiler warning about unused variable
}

// Look up runticks for a given pid in the pstat snapshot; -1 if not found.
static int
runticks_for(struct pstat *ps, int pid)
{
  for (int i = 0; i < NPROC; i++)
    if (ps->inuse[i] && ps->pid[i] == pid)
      return ps->runticks[i];
  return -1;
}

int main(void)
{
  int pidA, pidB;
  struct pstat ps;

  printf(1, "lottery_test: A gets %d tickets, B gets %d tickets (ratio %d:1)\n",
         TICKETS_A, TICKETS_B, TICKETS_A / TICKETS_B);

  // Give the parent a very large ticket count BEFORE forking, so it always wins
  // the lottery and never gets starved by the busy children, neither while
  // setting things up nor when it wakes to print the results. The children
  // inherit this count but immediately lower their own tickets to A/B below.
  // (While the parent is SLEEPING it is out of the lottery, so its huge ticket
  // count does not affect the measured A:B ratio.)
  settickets(getpid(), TICKETS_PARENT);

  pidA = fork();
  if (pidA < 0)
  {
    printf(1, "fork failed\n");
    exit();
  }
  if (pidA == 0)
  {
    settickets(getpid(), TICKETS_A);
    spin_forever();
  }

  pidB = fork();
  if (pidB < 0)
  {
    printf(1, "fork failed\n");
    kill(pidA);
    wait();
    exit();
  }
  if (pidB == 0)
  {
    settickets(getpid(), TICKETS_B);
    spin_forever();
  }

  // Let only the children compete for the CPU for RUN_TICKS ticks, then sample.
  sleep(RUN_TICKS);

  if (getpinfo(&ps) < 0)
  {
    printf(1, "getpinfo failed\n");
    kill(pidA);
    kill(pidB);
    wait();
    wait();
    exit();
  }

  int a = runticks_for(&ps, pidA);
  int b = runticks_for(&ps, pidB);
  if (a < 0)
    a = 0;
  if (b < 0)
    b = 0;

  int total = a + b;
  int observed_a = total ? (a * 100) / total : 0;
  int expected_a = (TICKETS_A * 100) / (TICKETS_A + TICKETS_B);

  printf(1, "\n=== Lottery results after %d ticks ===\n", RUN_TICKS);
  printf(1, "A (pid %d): %d run-ticks\n", pidA, a);
  printf(1, "B (pid %d): %d run-ticks\n", pidB, b);
  printf(1, "Expected A share = %d%%, Observed A share = %d%%\n",
         expected_a, observed_a);
  printf(1, "(A should run roughly %d times as much as B)\n",
         TICKETS_A / TICKETS_B);

  // Clean up the spinning children.
  kill(pidA);
  kill(pidB);
  wait();
  wait();

  exit();
}
