#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"

void pstat(){
    struct pstat pStat;
    getpinfo(&pStat);

    printf(1, "PID\tINUSE\tTICKETS\tRUNTICKS\tBOOSTSLEFT\n");
    printf(1, "-----------------------------------------------\n");
    for (int i = 0; i < NPROC; i++) {
        if (pStat.inuse[i]) {
            printf(1, "%d\t%d\t%d\t%d\t\t%d\n",
                   pStat.pid[i],
                   pStat.inuse[i],
                   pStat.tickets[i],
                   pStat.runticks[i],
                   pStat.boostsleft[i]);
        }
    }
}

int
main(int argc, char *argv[])
{
    pstat();
    exit();
}
