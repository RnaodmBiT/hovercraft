#include <stm32f4xx.h>

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

    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
    GPIOC->MODER |= GPIO_MODER_MODER13_0 | GPIO_MODER_MODER14_0 | GPIO_MODER_MODER15_0;

    while (1) {
        delay(200000);
        // Turn the LEDs off
        GPIOC->BSRRL |= GPIO_BSRR_BS_13 | GPIO_BSRR_BS_14 | GPIO_BSRR_BS_15;

        delay(200000);
        // Turn the LEDs on
        GPIOC->BSRRH |= GPIO_BSRR_BS_13 | GPIO_BSRR_BS_14 | GPIO_BSRR_BS_15;
    }
}


void nmi_handler(void) {
    while (1);
}

void hardfault_handler(void) {
    while (1);
}

