#include "pass_fail.h"
int test(int c);

// Comment the next line out if you don't want debug.
//#define DEBUG

#ifdef DEBUG
#include <stdio.h>
#define PRINT_INT(STR,X)  printf("DBG: STR %d\n", X);
#else
#define PRINT_INT(STR,X)  //printf("DBG: STR %d", x);
#endif

int main() {
  int x = 3;
  int y = 2;
  int c = 0;

  if (x < 5) {
    x =  x + y;
  }
  else  {
    x = x - y;
  }
  c = x + y;
  PRINT_INT("c: ", c);
  PRINT_INT("c: ", test(c));
  return test(c);
}

int test(int c) {
  if (c == 7) {
    return pass();
  } else return fail();

  return fail();
}

int pass() {
  return 1;
}

int fail() {
  return 0;
}


