#include "stdio.h"
#include "stdlib.h"


int main(int argc, char* argv[]) {
  if (argc < 2) {
    printf("wunzip: file1 [file2 ...]\n");
    exit(1);
  }
  int i, j, count;
  char c;
  for (i = 1; i < argc; ++i) {
    FILE *fp = fopen(argv[i], "r");
    if (fp == NULL) {
      printf("wunzip: cannot open file\n");
      exit(1);
    }
    while(1) {
      if(fread(&count, sizeof(int), 1, fp) == 0) {
        break;
      }
      fread(&c, sizeof(char), 1, fp);
      for (j = 0; j < count; ++j)
        printf("%c", c);
    } 
    fclose(fp);
  }
  return 0;
}