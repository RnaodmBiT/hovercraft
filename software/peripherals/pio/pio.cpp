#include <stm32f4xx.h>
#include "pio.hpp"

GPIO_TypeDef* ports[] = { GPIOA, GPIOB, GPIOC };


/* enable the specified PIO port */
void Pio::EnablePort(Port port) {
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN << port;
}

/* pio constructor */
Pio::Pio(Port port, Pin pin) : port(port), pin(pin) {
    EnablePort(port);
}

Pio::Pio(Port port, Pin pin, Mode mode) : port(port), pin(pin) {
    EnablePort(port);
    SetMode(mode);
}


/* set pin mode as input or output */
void Pio::SetMode(Mode mode) {
    uint32_t reg = ports[port]->MODER & ~(0x3 << (pin * 2));
    switch (mode) {
        case Input:
            ports[port]->MODER = reg;
            break;

        case Output:
            ports[port]->MODER = reg | (0x1 << (pin * 2));
            break;

        case Alternate:
            ports[port]->MODER = reg | (0x2 << (pin * 2));
            break;

        case Analog:
            ports[port]->MODER = reg | (0x3 << (pin * 2));
            break;

        default:
            return;
    }
}


/* set the pin output state */
bool Pio::operator=(bool high) {
    if (high) {
        // set the output
        ports[port]->BSRRL |= 1 << pin;
    } else {
        // reset the output
        ports[port]->BSRRH |= 1 << pin;
    }
    return high;
}


/* Get the pin state */
Pio::operator bool() const {
    return (ports[port]->IDR & (1 << pin)) != 0;
}

