#if 0
gcc -g -Wall "$0" && exec ./a.out "$@"
exit 1
#endif

#include <stdio.h>

int main(int argc, char *argv[])
{
    printf("Hello World!\n");
    return 0;
}
