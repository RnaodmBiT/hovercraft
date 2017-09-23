#include <stm32f4xx.h>
#include <pio.h>

extern unsigned long _estack;

typedef void (*isr_handler_t)();

void reset_handler(void);
void nmi_handler(void);
void hardfault_handler(void);

void delay(int n) {
    while (--n);
}

__attribute__ ((section("vectors")))
isr_handler_t __isr_vectors[] = {
    (isr_handler_t) &_estack, // TODO: Fix me
    reset_handler,
    nmi_handler,
    hardfault_handler
};


void reset_handler(void) {

    pio_enable_port(PIO_C);

    pio_set_mode(PC13, PIO_OUTPUT);
    pio_set_mode(PC14, PIO_OUTPUT);
    pio_set_mode(PC15, PIO_OUTPUT);


    while (1) {
        delay(200000);
        // Turn the LEDs off
        pio_set_output(PC13, true);
        pio_set_output(PC14, true);
        pio_set_output(PC15, true);

        delay(200000);
        // Turn the LEDs on
        pio_set_output(PC13, false);
        pio_set_output(PC14, false);
        pio_set_output(PC15, false);
    }
}


void nmi_handler(void) {
    while (1);
}

void hardfault_handler(void) {
    while (1);
}

