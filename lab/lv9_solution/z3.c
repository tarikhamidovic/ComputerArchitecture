#include <stdio.h>
// Napisati MIPS assembly program koji će biti
// ekvivalentan sljedećem dijelu C koda:
//
// static double d = 10.25;
// float f1(float a, double b) {
//    return a+b­-d;
// }

float foo(float, double);

int main() {
  float result = foo(5.1, 2.41);
  printf("%f\n", result);
  return 0;
}
