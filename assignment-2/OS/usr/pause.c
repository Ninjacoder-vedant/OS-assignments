#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"

#define TICKS_PER_SECOND 10

int main(int argc, char **argv)
{
    if (argc != 2) {   // Check if second argument is present
        printf(2, "Pause duration not specified. (usage: pause <no-of-seconds>)\n");
        exit();
    }

    int pause_duration = atoi(argv[1]);

    // Convert `pause_duration` in seconds to `ticks`
    long ticks = TICKS_PER_SECOND * (long)pause_duration;
    
    // printf(1, "%d seconds\n", ticks);
    
    // Call sys_sleep for `ticks` ticks
    sleep((int)ticks);
    // struct pstat pStat;
    // getpinfo(&pStat);

    // printf(1, "PID\tINUSE\tTICKETS\tRUNTICKS\tBOOSTSLEFT\n");
    // printf(1, "-----------------------------------------------\n");
    // for (int i = 0; i < NPROC; i++) {
    //     if (pStat.inuse[i]) {
    //         printf(1, "%d\t%d\t%d\t%d\t\t%d\n",
    //                pStat.pid[i],
    //                pStat.inuse[i],
    //                pStat.tickets[i],
    //                pStat.runticks[i],
    //                pStat.boostsleft[i]);
    //     }
    // }
    
    exit();
}