#include <stm32f4xx.h>
#include "sys.h"

extern unsigned long __stack;

void reset_handler(void);
void default_handler(void);

void main(void);


__attribute__ ((section("vectors")))
isr_handler_t __isr_vectors[16] = {
    (isr_handler_t) &__stack,
    reset_handler,          // Reset
    default_handler,        // NMI
    default_handler,        // Hard Fault
    default_handler,        // Memory management
    default_handler,        // Bus fault
    default_handler,        // Usage fault
    0,                      // Reserved
    0,                      // Reserved
    0,                      // Reserved
    0,                      // Reserved
    default_handler,        // SVCall
    0,                      // Reserved
    0,                      // Reserved
    default_handler,        // PendSV
    default_handler         // SysTick
};


void default_handler(void) {
    while (1);
}


void reset_handler(void) {
    // Setup the system to a good state then call main();
    sys_setup_external_clock();

    main();

    while (1);
}


void sys_setup_external_clock(void) {
    // Enable the external clock
    RCC->CR |= RCC_CR_HSEON;

    // Configure the PLL
    RCC->PLLCFGR |= RCC_PLLCFGR_PLLSRC_HSE; // Use the external clock
    RCC->PLLCFGR |= (0x00 << 16) & RCC_PLLCFGR_PLLP; // Set P = 2
    RCC->PLLCFGR |= (12 << 0) & RCC_PLLCFGR_PLLM; // Set M = 12
    RCC->PLLCFGR |= (200 << 6) & RCC_PLLCFGR_PLLN; // Set N = 200

    // F_CPU = F_IN * (N / (M * P))
    // F_CPU = 12M * (200 / (12 * 2))
    // F_CPU = 100MHz

    // Enable the PLL
    RCC->CR |= RCC_CR_PLLON;

    // Wait for the PLL to be ready (This is ignored for now, it should just flip over automatically when its ready)
    // while ((RCC->CR & RCC_CR_PLLRDY) == 0) ;

    // Switch over to the PLL
    RCC->CFGR |= RCC_CFGR_SW_PLL;
}


// Delay for a certain amount of time
void delay_us(int us) {
    int l = (us * 3000) / 214; // FIXME: Carefully calibrated values... These will need to be changed when the clock frequency is...
    asm volatile("0:" "subs %[count], 1;" "bne 0b;" : [count] "+r"(l));
}


void delay_ms(int ms) {
    delay_us(ms * 1000);
}


