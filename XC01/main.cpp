#include <stdlib.h>
#include <stdio.h>

extern "C"
{
    extern int XC01();

    int main()
    {
        XC01();
        
        return 0;
    }
}
