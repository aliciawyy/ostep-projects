// Practice Problem 3.29
int switcher(int a, int b, int c) {
  int answer;
  switch (a) {
    case 5:
    answer = b ^ 15;
    *(&c) = answer;
    break;
    case 0:
    answer = c + 112;
    break;
    case 2:
    case 7:
    answer = b + c;
    answer <<= 2;
    break;
    case 4:
    answer = 4;
    break;
    
    default:
    answer = b;
  }
  return answer;
}