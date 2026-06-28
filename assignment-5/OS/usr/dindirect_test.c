#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

#define SIZE (512 * 256)
char buf[SIZE];

int
main(int argc, char *argv[])
{
    int fd = open("myfile.txt", O_CREATE | O_WRONLY);
    if (fd < 0) {
        printf(1, "File creation failed\n");
        exit();
    }

    memset(buf, 'a', SIZE);

    int n = write(fd, buf,strlen(buf));
    printf(1, "Wrote %d bytes\n", n);

    close(fd);
    exit();
}