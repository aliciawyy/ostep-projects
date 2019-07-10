#include "types.h"
#include "user.h"


int main(int argc, char* argv[]) {
  int x = atoi(argv[1]);
  int y = atoi(argv[2]);
  printf(1, "%d / %d = %d\n", x, y, x / y);
  exit();
}
