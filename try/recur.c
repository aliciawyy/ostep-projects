// Practice Problem 3.34

int rfun(unsigned x) {
  if (x == 0)
    return 0;
  return rfun(x >> 1) + (x & 1);
}