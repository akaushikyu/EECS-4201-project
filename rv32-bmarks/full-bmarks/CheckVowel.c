#include "pass_fail.h"
int test(int result);

// Comment the next line out if you don't want debug.
//#define DEBUG

#ifdef DEBUG
#include <stdio.h>
#define PRINT_INT(X)  printf("DBG: %d\n", X);
#else
#define PRINT_INT(X)  //printf("DBG:\STR %d", x);
#endif

int main() {
  int i = 0;
  int j = 0;
  char ch[20] = "CheckVowel!\n";

  for (i=0;i<20;i++) {
    if (ch[i] == 'a' || ch[i] == 'A' || ch[i] == 'e' || ch[i] == 'E' || ch[i] == 'i' || ch[i] == 'I' || ch[i] =='o' || ch[i]=='O' || ch[i] == 'u' || ch[i] == 'U')
      ++j;
      //    printf("%c is a vowel.\n", ch[i]);
    //    printf("%c is not a vowel.\n", ch[i]);
  }

  PRINT_INT(j);
  PRINT_INT(test(j));
  return test(j);
}


int test(int result) {
  if (result == 3) {
    return pass();
  }
  return fail();
}

int pass() {
  return 1;
}

int fail() {
  return 0;
}

