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

int factorial(int);

int main () {
  int i = 0;
  int n = 0;
  for (i = 0; i < 4; ++i) {
    n += factorial (i);
 //   printf ("factorial(%d) = %d\n", i, n);
  }
  PRINT_INT(n);
  PRINT_INT(test(n));
  return test(n);
}
int factorial(int n) {
   int loop = 0;
   int acc = 0;
  if (n == 0)
    return 1;
  // We don't want to generate multiplies
  for (loop = 0; loop < n; loop++) {
     acc = acc + factorial (n-1);
  }
  return acc; //n * factorial (n - 1);
}


int test(int result) {
  if (result == 10) {
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






