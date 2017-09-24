#include <stm32f4xx.h>
#include <sys.h>
#include <pio.h>


void main(void) {
    // Setup the PIO ports
    pio_enable_port(PIO_C);

    pio_set_mode(PC13, PIO_OUTPUT);
    pio_set_mode(PC14, PIO_OUTPUT);
    pio_set_mode(PC15, PIO_OUTPUT);

    pio_set_output(PC13, true);
    pio_set_output(PC14, true);
    pio_set_output(PC15, true);


    while (1) {
        delay_ms(100);

        // Turn the LEDs off
        pio_set_output(PC13, true);
        pio_set_output(PC14, true);
        pio_set_output(PC15, true);

        delay_ms(100);

        // Turn the LEDs on
        pio_set_output(PC13, false);
        pio_set_output(PC14, false);
        pio_set_output(PC15, false);
    }

    while (1) ;
}

