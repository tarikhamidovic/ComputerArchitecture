#include <stdint.h>
#include <stdio.h>

void convert(char num, char* ptr);

int main() {
  char ptr[4] = {0, 0, 0, 0};
  convert(10, ptr);
  printf("%d%d%d%d\n", (int)ptr[0], (int)ptr[1], (int)ptr[2], (int)ptr[3]);
  return 0;
}