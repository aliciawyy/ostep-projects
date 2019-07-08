#include "stdio.h"
#include "stdlib.h"
#include "string.h"


void search_and_print_line(const char* target, FILE* fp) {
  char *line = NULL, *start = NULL;
  size_t len = 0;
  while (getline(&line, &len, fp) != -1) {
    start = strstr(line, target);
    if (start != NULL) {
      printf("%s", line);
    }
  }
}

int main(int argc, char* argv[]) {
  if (argc < 2) {
    printf("wgrep: searchterm [file ...]\n");
    exit(1);
  }
  const char* target = argv[1];
  if (argc == 2) {
    search_and_print_line(target, stdin);
  }
  int i;
  for (i = 2; i < argc; ++i) {
    FILE *fp = fopen(argv[i], "r");
    if (fp == NULL) {
      printf("wgrep: cannot open file\n");
      exit(1);
    }
    search_and_print_line(target, fp);
    fclose(fp);
  }
  return 0;
}