// File: lotto_two_debug.c
// Debug-friendly lottery scheduler test for xv6
// Place in user/ and add to UPROGS (e.g. _lotto_two_debug)

#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"

#define BUSY_LOOPS 300000     // smaller loops so prints appear quickly
#define SIM_SECONDS 20
#define TICKS_PER_SEC 100     // xv6 typical: 100 ticks == 1 second
#define SAMPLE_INTERVAL (1 * TICKS_PER_SEC) // sample every 1 second

static void busy_work(void) {
  volatile int i;
  for (i = 0; i < BUSY_LOOPS; i++) {
    // busy loop to consume CPU
  }
}

// return runticks for pid in pstat, or -1 if not found
static int get_runticks_for_pid(struct pstat *ps, int pid) {
  for (int i = 0; i < NPROC; i++) {
    if (ps->inuse[i] && ps->pid[i] == pid) {
      return ps->runticks[i];
    }
  }
  return -1;
}

int main(int argc, char *argv[]) {
  int pidA, pidB;
  int ticketsA = 20;
  int ticketsB = 4;

  printf(1, "lotto_two_debug: starting. (pid=%d)\n", getpid());
  printf(1, "Note: sleep() uses ticks; %d ticks = ~1 second\n", TICKS_PER_SEC);

  // Fork child A
  pidA = fork();
  if (pidA < 0) {
    printf(1, "fork failed for A\n");
    exit();
  }
  if (pidA == 0) {
    // Child A: set tickets and busy-run forever (no prints)
    settickets(getpid(),ticketsA);
    while (1) {
      busy_work();
      // small yield-like pause via a syscall to make console responsive
      sleep(1); // sleep 1 tick (~10ms)
    }
    exit();
  }

  // Fork child B
  pidB = fork();
  if (pidB < 0) {
    printf(1, "fork failed for B\n");
    kill(pidA);
    wait();
    exit();
  }
  if (pidB == 0) {
    // Child B: set tickets and busy-run forever (no prints)
    settickets(getpid(),ticketsB);
    while (1) {
      busy_work();
    //   sleep(1);
    }
    exit();
  }

  // Parent: sample every second and print stats
  printf(1, "Started children: A(pid=%d,tickets=%d) B(pid=%d,tickets=%d)\n",
         pidA, ticketsA, pidB, ticketsB);
  printf(1, "time(s)\tA_ticks\tB_ticks\tA_share(%%)\n");

  int elapsed_ticks = 0;
  struct pstat ps;
  while (elapsed_ticks < SIM_SECONDS * TICKS_PER_SEC) {
    sleep(SAMPLE_INTERVAL); // sleep SAMPLE_INTERVAL ticks (here 1 second)
    elapsed_ticks += SAMPLE_INTERVAL;

    if (getpinfo(&ps) < 0) {
      printf(1, "[parent] getpinfo failed\n");
      break;
    }

    int ar = get_runticks_for_pid(&ps, pidA);
    int br = get_runticks_for_pid(&ps, pidB);
    int total = 0;
    if (ar >= 0) total += ar;
    if (br >= 0) total += br;
    int ashare = 0;
    if (total > 0 && ar >= 0) ashare = (ar * 100) / total;
    printf(1, "%d\t%d\t%d\t%d\n",
           elapsed_ticks / TICKS_PER_SEC,
           ar < 0 ? 0 : ar,
           br < 0 ? 0 : br,
           ashare);
  }

  // stop children
  kill(pidA);
  kill(pidB);

  // wait for both children
  wait();
  wait();

  // final stats sample
  if (getpinfo(&ps) >= 0) {
    int finalA = get_runticks_for_pid(&ps, pidA);
    int finalB = get_runticks_for_pid(&ps, pidB);
    if (finalA < 0) finalA = 0;
    if (finalB < 0) finalB = 0;
    int tot = finalA + finalB;
    int observed_pctA = tot ? (finalA * 100) / tot : 0;
    int expected_pctA = (ticketsA * 100) / (ticketsA + ticketsB);
    printf(1, "\n=== Final ===\n");
    printf(1, "A(pid=%d) ticks=%d\n", pidA, finalA);
    printf(1, "B(pid=%d) ticks=%d\n", pidB, finalB);
    printf(1, "Expected A share = %d%%, Observed A share = %d%%\n", expected_pctA, observed_pctA);
  } else {
    printf(1, "[parent] getpinfo failed on final sample\n");
  }

  exit();
}




// Is this correct way to simulate two processes