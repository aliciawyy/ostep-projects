#include "stdio.h"
#include <sys/stat.h> 
#include <fcntl.h>

int main(int argc, char* argv[]) {
  int i;
  for (i = 1; i < argc; ++i) {
    FILE *fp = fopen(argv[i], "r");
    if (fp == NULL) {
      printf("wcat: cannot open file\n");
      return 1;
    }
    char c = fgetc(fp);
    while (c != EOF) {
      printf("%c", c);
      c = fgetc(fp);
    }
    fclose(fp);
  }
  return 0;
}