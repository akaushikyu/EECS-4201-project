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

  int arr[10] ;
  int i = 0;
  int sum = 0;

  for (i = 0; i < 10; i++) {
    arr[i] = i;
  }

  for (i = 0; i < 10; i++) {
    sum = sum + arr[i];
  }

  PRINT_INT("sum: ", sum);
  PRINT_INT("test: ", test(sum));
  return test(sum);
}

int test(int c) {
  if (c == 45) {
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


