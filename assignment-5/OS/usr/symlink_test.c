#include "types.h"
#include "stat.h"
#include "user.h"

#define O_RDONLY        0x000
#define O_WRONLY        0x001
#define O_RDWR          0x002
#define O_CREATE        0x200


int
main(void)
{
  int fd;
  char buf[100];

  printf(1, "Creating target.txt...\n");
  int t = open("target.txt", O_CREATE | O_RDWR);
  if (t < 0) {
    printf(1, "Failed to create target.txt\n");
    exit();
  }
  write(t, "xv6-symlink-test", 16);
  close(t);

  printf(1, "Creating symlink link.txt -> target.txt...\n");
  if (symlink("target.txt", "link.txt") < 0) {
    printf(1, "symlink creation failed\n");
    exit();
  }

  fd = open("link.txt", O_RDONLY);
  if (fd < 0) {
    printf(1, "open via symlink failed\n");
    exit();
  }

  int n = read(fd, buf, sizeof(buf) - 1);
  if (n > 0) buf[n] = '\0';
  printf(1, "Read through symlink: %s\n", buf);
  close(fd);

  exit();
}
