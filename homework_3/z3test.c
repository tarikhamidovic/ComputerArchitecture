#include <stdio.h>

double foo(double, double*, double);

int main() 
{
  double p = 10.2;
  double a = 2.1;
  double b = 3.7;
  printf("Rezultat = %f\n", foo(a, &p, b));
  return 0;
}

