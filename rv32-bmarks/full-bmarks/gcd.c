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
    int n1, n2;
    n1 = 2048; n2 = 124;
    // if user enters negative number, sign of the number is changed to positive
    n1 = ( n1 > 0) ? n1 : -n1;
    n2 = ( n2 > 0) ? n2 : -n2;

    while(n1!=n2)
    {
        if(n1 > n2)
            n1 -= n2;
        else
            n2 -= n1;
    }

    PRINT_INT(n1);
    PRINT_INT(test(n1));
    return test(n1);
}

int test(int result) {
   return (result == 4);
}
