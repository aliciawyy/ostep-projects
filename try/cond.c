/*
 * Practice problem 3.16, 3.18
 * gcc -S cond.c -O1
 */

void cond(int a, int *p) {
  if (p && a > 0) {
    *p += a;
  }
}

void cond_goto(int a, int *p) {
  if (p == 0)
    goto done;
  if (a <= 0)
    goto done;
  *p += a;

done:
  return;
}


int test1(int x, int y) {
  int val = x * y;
  if (x >= -3) {
      if (x > 2) {
        val = x - y;
      } else {
        val = x ^ y;
      }
  } else if (y <= x) {
    val = x + y;
  }
  return val;
}

int test2(int x, int y) {
  int val = x ^ y;
  if (x < -3) {
      if (x > y) {
        val = x * y;
      } else {
        val = x + y;
      }
  } else if (x > 2) {
    val = x - y;
  }
  return val;
}