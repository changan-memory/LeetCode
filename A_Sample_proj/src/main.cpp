#include <iostream>
using namespace std;
#include "swap.h"

int main()
{
    int a = 10, b = 20;
    cout << a << " " << b << endl;
    swap(a, b);
    cout << a << " " << b << endl;

    return 0;
}