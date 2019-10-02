#include <stdio.h>

// Napisati MIPS assembly program koji će biti
// ekvivalentan sljedećem dijelu C koda:
//
// static double d = 10.25;
// double f1(int a, double b) {
//    return a+b­-d;
// }

double foo(int a, double b);

int main() {
  int i = 7;
  double d = 15.10;
  printf("%f\n", foo(i, d));
  return 0;
}
