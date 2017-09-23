#include <stm32f4xx.h>
#include "pio.h"

GPIO_TypeDef* ports[] = { GPIOA, GPIOB, GPIOC };


/* enable the specified PIO port */
void pio_enable_port(pio_port_t port) {
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN << port;
}


/* set pin mode as input or output */
void pio_set_mode(pio_t pin, pio_mode_t mode) {
    if (mode == PIO_INPUT) {
        ports[pin.port]->MODER &= ~(0x3 << (pin.pin * 2));
    } else {
        ports[pin.port]->MODER |= (0x1 << (pin.pin * 2));
    }
}


/* set the pin output state */
void pio_set_output(pio_t pin, bool high) {
    if (high) {
        // set the output
        ports[pin.port]->BSRRL |= pin.mask;
    } else {
        // reset the output
        ports[pin.port]->BSRRH |= pin.mask;
    }
}

