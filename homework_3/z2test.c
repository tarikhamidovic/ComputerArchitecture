#include<stdio.h>

float stepen(float x, int n);

int main() {
  float x = 10.5;
  int n = 3;
  printf("%f na %d je: %f \n", x, n, stepen(x,n));
  return 0;
}
