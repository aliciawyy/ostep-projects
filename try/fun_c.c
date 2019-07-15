// Practice problem 3.49
long fun_c(unsigned long x) {
  long val = 0;
  int i;
  unsigned long mask = 72340172838076673;
  for (i = 0; i < 8; ++i) {
    val += x & mask;
    x >>= 1;
  }
  val += val >> 32;
  val += val >> 16;
  val += val >> 8;
  return val & 255;
}