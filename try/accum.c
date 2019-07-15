long int acc = 0;

long int sum(int* x, int y) {
    long int t = *x + y;
    acc += t;
    *x = t;
    return t;
}