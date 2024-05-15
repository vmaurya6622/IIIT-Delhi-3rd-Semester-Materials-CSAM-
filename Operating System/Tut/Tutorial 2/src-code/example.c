
#include <stdio.h>
void bar()
{
    printf("Inside bar\n");
}
void foo() {

    for (int i = 0; i < 10; i++)
    {
        printf("Line %d\n", i);
    }
    bar();
}


int main() {
    
    
    int x = 10;
    int y = 20;

    x = 12;

    if (x > y) {
        printf("x is greater\n");
    } else {
        printf("y is greater\n");
    }
    
    foo();

    return 0;
}



// gcc -g example.c -o example

// gdb a.out

// run

// break 29

// break foo

// delete 1

// step

// next

// watch x

// print x


