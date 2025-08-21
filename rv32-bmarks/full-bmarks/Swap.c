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

void swap(int *p, int *q);
int main(void)
{
   int a=5;
  int b=9;
  int *p ;
  int *q ;
  p = &a;
  q = &b;
  swap(p,q);
  // v0 should have a = 9
  a = *p;
  // v1 should have b = 5
  b = *q;
  // v0 stores the sum 14

  PRINT_INT(a+b);
  PRINT_INT(test(a+b));
  return test(a + b);
}

void swap(int *p, int *q)
{
  int temp;
  temp = *p;
  *p=*q;
  *q=temp;
}

int test(int result) {
  if (result == 14) {
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

