// Practice problem 3.22
int fun_a(unsigned x) {
  int val = 0;
  while (x) {
    val ^= x;
    x >>= 1;
  }
  return 1 & val;
}