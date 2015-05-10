#if 0
clang -Weverything -Werror "$0" && exec ./a.out "$@"
exit 1
#endif

#include <stdio.h>

int main(int argc, char *argv[])
{
    printf("%s called with %d parameter%s!\n", argv[0], argc - 1,
            argc == 2 ? "" : "s");
    return 0;
}
