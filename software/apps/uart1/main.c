#include <sys.h>
#include <uart.h>
#include <pio.h>


void main(void) {

    const char msg[] = "hello world!\r\n";

    uart_init();

    pio_enable_port(PIO_C);
    pio_set_mode(PC13, PIO_OUTPUT);
    pio_set_output(PC13, false);
    bool state = false;

    for (;;) {
        uart_write_string(msg);
        pio_set_output(PC13, state = !state);
        delay_ms(500);
    }

    while (1) ;
}

