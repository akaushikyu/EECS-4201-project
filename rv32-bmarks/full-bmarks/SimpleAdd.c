#include "pass_fail.h"
int test(int c);

int main() {

  int a = 3;
  int b = 2;
  int c = 0;

  c = a + b;

  return test(c);
}

int test(int c) {
  if (c == 5) {
    return pass();
  } else {
    return fail();
  }
  // Should never get here.
  return fail();
}

int pass() {
  return 1;
}

int fail() {
  return 0;
}


