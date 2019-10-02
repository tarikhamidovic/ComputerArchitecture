#include <stdio.h>
// Napisati MIPS assembly program koji će biti
// ekvivalentan sljedećem dijelu C koda:

// static double d = 10.25;

// double foo(int a, double b) {
//     if (b < a)
//        return a + b­ - d;
//     else if (b == a) return a + b;
//     return a + b + d;
// }

double foo(int, double);

int main() {
  double result = foo(5, 2.41);
  printf("%lf\n", result);
  return 0;
}