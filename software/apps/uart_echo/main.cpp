#include <sys.hpp>
#include <uart.h>
#include <pio.hpp>

void SysTickHandler(void) { }


void main(void) {

    uart_init();

    Pio green(Pio::C, 13, Pio::Output);

    for (;;) {
        if (uart_is_read_ready()) {
            char c = uart_read_byte();
            uart_write_byte(c);
            green = !green;
        }
    }

    while (1) ;
}

