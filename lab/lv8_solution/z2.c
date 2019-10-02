#include <stdio.h>

// Napisati MIPS assembly program koji će biti
// ekvivalentan sljedećem dijelu C koda:
//
// static int a = 5;
//
// void foo(double* p, double f) {
//  *p += a + f;
// }

void foo(double* p, double d);

int main() {
  double p = 10.15;
  double d = 15.10;
  foo(&p, d);
  printf("%f\n", p);
  return 0;
}