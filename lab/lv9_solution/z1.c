#include <stdio.h>

// Napisati MIPS assembly program koji će biti
// ekvivalentan sljedećem dijelu C koda:
//
//  int f1(int a, int b, float c) {
//     return a+b+c;
//  }

int foo(int, int, float);

int main() {
  float p = 10.2;
  int a = 2;
  int b = 3;
  printf("Rezultat = %d\n", foo(a, b, p));
  return 0;
}
