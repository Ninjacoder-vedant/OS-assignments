#include "types.h"
#include "user.h"

int main() {

    int openChan = getChannel();
    printf(1,"Channel obtained is %d\n",openChan);
    int ret = fork();
    if (ret == 0) {
        sleep(20);
        sigChan(openChan);
        exit();
    }
    else {
        printf(1,"going to sleep on channel %d\n",openChan);
        sleepChan(openChan);
        printf(1,"Woken up by child\n");
        wait();
    }
    exit();

}
