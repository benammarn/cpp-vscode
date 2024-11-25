#include <iostream>
#include <stdio.h>


int add( int a, int b) {
    return a  +  b;
}

void increment(int& a){
    ++a;
}


int main()
{
    int var = 10;
    increment(var);
    std::cout << var << std::endl;
    return 0;
}
