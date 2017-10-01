#include <sys.hpp>
#include <uart.hpp>

void main(void) {

    Uart::Initialize();

    // TODO: Potentially do some adjustment of the clock rates here?

    for (;;) {
        Uart::Write('a'); // dump this down the UART as fast as it will go.
    }

    while (1) ;
}

