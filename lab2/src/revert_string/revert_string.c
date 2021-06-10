#include <stdio.h>
#include <string.h>
#include "revert_string.h"


void RevertString(char *str)
{
    for(int i=0, l=strlen(str); i<l/2; i++)
    {
        char buff = str[i];
        str[i] = str[l-i-1];
        str[l-i-1] = buff;
    }
}

// void __attribute__ ((constructor)) initLibrary(void) {
//     printf("Library initialized \n");
// }

// void __attribute__ ((destructor)) cleanUpLibrary(void) {
//     printf("Library is exited \n");
// }
