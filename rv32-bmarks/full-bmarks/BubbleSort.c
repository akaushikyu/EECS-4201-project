/**************************************************
          Bubble Sorting Algorithm Example
          --------------------------------

Source taken from: 
Program takes a hardcoded array of certain numbers
and sorts them using a simple bubble sort algorithm
that I put into a function. I used a macro instead
of a function for the swapping b/c it's easier to
read and understand. The program outputs a before
and after of the elements of the array to show that
it actually did something ;)
***************************************************/
#include "pass_fail.h"
int test(int array[]);
typedef enum {false, true} bool;

// Comment the next line out if you don't want debug.
//#define DEBUG

#ifdef DEBUG
#include <stdio.h>
#define PRINT_INT(STR,X)  printf("DBG: STR %d\n", X);
#else
#define PRINT_INT(STR,X)  //printf("DBG: STR %d", x);
#endif

#define SWAP(a,b)   { int t; t=a; a=b; b=t; }  // Macro for swapping
#define INDEX 8
void bubble_srt(int a[], int n);
int main(void) {
   int i;
   int array[INDEX] = {12, 9, 4, 99, 120, 1, 3, 10};
   bubble_srt(array, INDEX);        // Sort the array

   PRINT_INT("test: ", test(array));
   return test(array);
}
/***************************************************************
                      The Bubble Sort Itself
                      ----------------------
The bubble sort is probably one of the easiest sorting algorithms 
to understand. The function sifts through the array swapping 
pairs of numbers over and over again until it is finally sorted.
When it makes it's first pass, it compares the first two numbers
(or elements) of the array. If the first number is greater than
the second number, it is swapped with that number. Then it 
compares the second and third numbers (or elements) of the array. 
If the second number is greater than the third, it is swapped with
that number. It continues down the line until it has gone through
the entire array. Then it makes another pass through it doing
the same thing. It makes a pass for each element. So if an array
has 8 elements, the array will be sifted through 8 times. 
The function takes 2 arguments. One is the array itself(int a[]). 
Two is the number of elements in the array(int n). This number 
is important because, as I said earlier, the array is to be sifted
through once for each element in the array.
***************************************************************/
void bubble_srt( int a[], int n )  
{   
    int i, j;
       
    for(i = 0; i < n; i++)         // Make a pass through the array for each element
    {              
        for(j = 1; j < (n-i); j++) // Go through the array beginning to end
        {              
           if(a[j-1] > a[j])       // If the the first number is greater, swap it 
              SWAP(a[j-1],a[j]);   
        }
    }
}

int test(int array[]) {
  bool sorted = true;
  int i = 0;
  for(i = 0; i < INDEX-1; i++) {
    if (array[i] > array[i+1] ) {
      return fail();
    }
  }
  return pass();
}

int pass() {
  return 1;
}

int fail() {
  return 0;
}

