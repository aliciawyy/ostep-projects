#include "stdio.h"
#include "unistd.h"
#include <sys/fcntl.h>

#define N_BUF 1024

int main(int argc, char* argv[]) {
  int i, n;
  char buf[N_BUF];
  for (i = 1; i < argc; ++i) {
    int fd = open(argv[i], O_RDONLY);
    if (fd < 0) {
      printf("wcat: cannot open file\n");
      return 1;
    }
    do {
      n = read(fd, buf, N_BUF);
      write(STDOUT_FILENO, buf, n);
    } while (n > 0);
    close(fd);
  }
  return 0;
}