#define N 17

typedef int fix_matrix[N][N];


void fix_set_diag(fix_matrix A, int val) {
  int i, n = N*N;
  int *arr = &A[0][0];
  for (i = 0;i < n; i += N)
     *(arr + i) = val;
}