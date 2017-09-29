#include <sys.hpp>
#include <uart.h>
#include <pio.hpp>

void SysTickHandler() { }

void main(void) {

    const char msg[] = "hello world!\r\n";

    uart_init();

    Pio green(Pio::C, 13, Pio::Output);
    bool state = false;

    for (;;) {
        uart_write_string(msg);
        delay_ms(500);
        green = (state = !state);
    }

    while (1) ;
}

