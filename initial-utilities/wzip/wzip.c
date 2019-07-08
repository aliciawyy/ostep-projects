#include "stdio.h"
#include "stdlib.h"


int main(int argc, char* argv[]) {
  if (argc < 2) {
    printf("wzip: file1 [file2 ...]\n");
    exit(1);
  }
  int i, count = 0;
  char prev = EOF, cur;
  for (i = 1; i < argc; ++i) {
    FILE *fp = fopen(argv[i], "r");
    if (fp == NULL) {
      printf("wzip: cannot open file\n");
      exit(1);
    }
    do {
      cur = getc(fp);
      if (cur == prev) {
        ++count;
      } else if (cur == EOF) {
        break;
      } else {
        if (prev != EOF) {
          fwrite(&count, sizeof(int), 1, stdout);
          fwrite(&prev, sizeof(char), 1, stdout);
        }
        prev = cur;
        count = 1;
      }
    } while (cur != EOF);
    fclose(fp);
  }
  if (prev != EOF) {
    fwrite(&count, sizeof(int), 1, stdout);
    fwrite(&prev, sizeof(char), 1, stdout);
  }
  return 0;
}