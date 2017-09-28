#include <stm32f4xx.h>
#include <sys.hpp>
#include <pio.hpp>


void main(void) {
    Pio green = Pio(Pio::C, 13, Pio::Output);
    Pio yellow = Pio(Pio::C, 14, Pio::Output);
    Pio red = Pio(Pio::C, 15, Pio::Output);

    while (1) {
        delay_ms(100);

        // Turn the LEDs off
        green = yellow = red = true;

        delay_ms(100);

        // Turn the LEDs on
        green = yellow = red = false;
    }
}

