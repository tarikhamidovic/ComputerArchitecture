#include <stdio.h>

// Napisati MIPS assembly program koji će biti
// ekvivalentan sljedećem dijelu C koda:
//
//  static int a = 5;
//  float c = 2.5;
//
//  void foo(float* p) {
//    *p = a + c;
//  }

void foo(float*);

int main() {
  float p = 10.2;
  foo(&p);
  printf("p = %f\n", p);
  return 0;
}