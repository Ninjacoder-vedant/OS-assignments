/*----------xv6 sync lab----------*/
#include "types.h"
#include "defs.h"
#include "param.h"
#include "spinlock.h"
#include "barrier.h"


struct spinlock b_lock;
int numProc = 0;
int
barrier_init(int n)
{ 
  initlock(&b_lock, "barrier");
  acquire(&b_lock);
  numProc = n;
  release(&b_lock);
  return 0;
}
/*
 * proc needs to sleep on a common channel which can be waked up simultaneously
 * threfore we use the unique addrees of the barrier lock to slee pthe processes
 * It will be unique and shared by single set of processes
 * 
 * */
int
barrier_check(void)
{
  acquire(&b_lock);

  numProc--;
  // cprintf("%d\n",numProc);
  if (numProc  > 0) {
    sleep(&b_lock, &b_lock);
    // cprintf("--\n");
  } else {
    wakeup(&b_lock); 
  }

  release(&b_lock);
  return 0;
}

/*----------xv6 sync lock end----------*/
