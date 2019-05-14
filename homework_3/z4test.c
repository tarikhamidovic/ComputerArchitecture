#include<stdio.h>

double foo(float, float, double);

int main() 
{
  double d = 10.2;
  float c = 2.1;
  float b = 3.7;

  printf("Rezultat = %f\n", foo(b,c,d));
  return 0;
}
