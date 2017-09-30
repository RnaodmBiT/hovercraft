#include <sys.hpp>
#include <uart.hpp>
#include <pio.hpp>


void main(void) {

    Uart::Initialize();
    Pio green(Pio::C, 13, Pio::Output);

    for (;;) {
        if (Uart::HasData()) {
            Uart::Write(Uart::Read());
            green = !green;
        }
    }

    while (1) ;
}

