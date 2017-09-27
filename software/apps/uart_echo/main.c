#include <sys.h>
#include <uart.h>
#include <pio.h>


void main(void) {

    uart_init();

    pio_enable_port(PIO_C);
    pio_set_mode(PC13, PIO_OUTPUT);
    pio_set_output(PC13, false);
    bool state = false;

    for (;;) {
        if (uart_is_read_ready()) {
            char c = uart_read_byte();
            uart_write_byte(c);
            pio_set_output(PC13, state = !state);
        }
    }

    while (1) ;
}

