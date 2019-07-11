
/* Practice Problem 3.5
 * gcc -S decode1.c -O1 
 */
void decode1(int *xp, int *yp, int *zp) {
  int x = *xp, y = *yp, z = *zp;
  *yp = x;
  *zp = y;
  *xp = z;
}