#define STM32F410xx
#include "stm32f4xx.h"

extern unsigned long _estack;

typedef void (*isr_handler_t)();

void reset_handler(void);
void nmi_handler(void);
void hardfault_handler(void);

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

    while (1);

}


void nmi_handler(void) {
    while (1);
}

void hardfault_handler(void) {
    while (1);
}

