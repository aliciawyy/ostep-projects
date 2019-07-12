/*
 * Practice problem 3.27
 */

int test(int x, int y) {
  int val = x - y;
  if (y <= 0) {
    if (y < -2) {
      val = x + y;
    } else {
      val = x * 4;
    }
  } else if (y <= x) {
    val = x ^ y;
  }
  return val;
}