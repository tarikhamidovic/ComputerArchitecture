#include <stdio.h>
#include <string.h>

extern int isPalindrome(char* s, int len);

int main() {
  char str[] = "amenetuniminutenema";
  if (isPalindrome(str, strlen(str))) {
    printf("Is palindrome\n");
  } else {
    printf("Is not palindrome\n");
  }
  return 0;
}