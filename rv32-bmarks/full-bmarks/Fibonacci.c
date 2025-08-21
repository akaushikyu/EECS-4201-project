#include "pass_fail.h"
int test(int result);

// Comment the next line out if you don't want debug.
//#define DEBUG

#ifdef DEBUG
#include <stdio.h>
#define PRINT_INT(STR,X)  printf("DBG: STR %d\n", X);
#else
#define PRINT_INT(STR,X)  //printf("DBG: STR %d", x);
#endif

int fib(int n);

int main() {

  int a = fib(10);
  PRINT_INT("restul: ", a);
  PRINT_INT("test: ", test(a));
  return test(a);
}

int fib(int n) {
  if (n <= 1) {
    return n;
  }
  else {
        return fib(n-1) + fib(n-2);
  }
}

int test(int result) {
  if (result == 55) {
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

