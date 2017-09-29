#include <stm32f4xx.h>
#include "sys.hpp"

extern char __stack, __data_load, __data_start, __data_end, __bss_start, __bss_end;

void reset_handler(void);
void default_handler(void);

void main(void);
void call_constructors(void);

void SysTickHandler(void);

// Stack protection
extern "C" {

// The canary value
extern const uintptr_t __stack_chk_guard = 0xdeadbeef;

// Called if the check fails
[[noreturn]]
void __stack_chk_fail() {
    // TODO: Handle this error, crash?
    while (1);
}

} // end extern "C"

__attribute__ ((section(".vectors")))
isr_handler_t static_vectors[16] = {
    (isr_handler_t) &__stack,
    reset_handler,          // Reset
    default_handler,        // NMI
    default_handler,        // Hard Fault
    default_handler,        // Memory management
    default_handler,        // Bus fault
    default_handler,        // Usage fault
    0, 0, 0, 0,             // Reserved
    default_handler,        // SVCall
    0, 0,                   // Reserved
    default_handler,        // PendSV
    default_handler,        // SysTick
};

__attribute__ ((section(".dynamic_vectors")))
isr_handler_t vectors[16] = {
    (isr_handler_t) &__stack,
    reset_handler,          // Reset
    default_handler,        // NMI
    default_handler,        // Hard Fault
    default_handler,        // Memory management
    default_handler,        // Bus fault
    default_handler,        // Usage fault
    0, 0, 0, 0,             // Reserved
    default_handler,        // SVCall
    0, 0,                   // Reserved
    default_handler,        // PendSV
    SysTickHandler,         // SysTick
};



void default_handler(void) {
    while (1);
}


void setup_memory(void) {
    char *src, *dst;

    // Copy .data into SRAM
    for (src = &__data_load, dst = &__data_start; dst < &__data_end;) {
        *dst++ = *src++;
    }

    // Zero .bss
    for (dst = &__bss_start; dst < &__bss_end;) {
        *dst++ = 0;
    }

    // Remap the vector table
    SCB->VTOR = (uint32_t) &vectors & SCB_VTOR_TBLOFF_Msk;
}


void reset_handler(void) {
    // Setup the system to a good state then call main();
    sys_setup_external_clock();

    setup_memory();

    call_constructors();

    main();

    while (1);
}


void call_constructors(void) {
    extern void (*__init_array_start)();
    extern void (*__init_array_end)();

    for (void (**p)() = &__init_array_start; p < &__init_array_end; ++p) {
        (*p)();
    }
}


void sys_setup_external_clock(void) {

    // Enable output of the HSE on MCO1
    //RCC->CFGR |= RCC_CFGR_MCO1_0 | RCC_CFGR_MCO1_1;
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
    GPIOA->MODER |= GPIO_MODER_MODER8_1;

    RCC->CR |= RCC_CR_HSEON;
    while ((RCC->CR & RCC_CR_HSERDY) == 0) ;

    // Set the peripheral clock prescalers
    RCC->CFGR = RCC_CFGR_PPRE1_DIV2 | RCC_CFGR_PPRE2_DIV1;

    // Need 3 WD and prefetch
    FLASH->ACR = FLASH_ACR_LATENCY_3WS | FLASH_ACR_PRFTEN;

    // Configure the PLL
    RCC->PLLCFGR = RCC_PLLCFGR_PLLSRC_HSE | // Use the external clock
                   (0x1 << 16) & RCC_PLLCFGR_PLLP | // Set P = 4
                   (12 << 0) & RCC_PLLCFGR_PLLM | // Set M = 12
                   (400 << 6) & RCC_PLLCFGR_PLLN; // Set N = 400

    // F_CPU = F_IN * (N / (M * P))
    // F_CPU = 12M * (400 / (12 * 4))
    // F_CPU = 100MHz

    // Enable the PLL
    RCC->CR |= RCC_CR_PLLON;

    // Wait for the PLL to be ready (This is ignored for now, it should just flip over automatically when its ready)
    while ((RCC->CR & RCC_CR_PLLRDY) == 0) asm("");

    // Switch over to the PLL
    RCC->CFGR |= RCC_CFGR_SW_PLL;

    while ((RCC->CFGR & RCC_CFGR_SWS_PLL) == 0) asm("");
}


// Delay for a certain amount of time
void delay_us(unsigned long us) {
    // This is more or less witchcraft but it does work...
    unsigned long long l = (us * 100) / 3;
    asm volatile("0:" "subs %[count], 1;" "bne 0b;" : [count] "+r"(l));
}


void delay_ms(unsigned long ms) {
    for (int i = 0; i < ms; ++i) {
        delay_us(1000);
    }
}


// Define the delete operators
void operator delete(void* p) {
    // TODO: This should crash noticeably... we don't want to hit this
}


void operator delete(void* p, std::size_t t) {
    // TODO: This should also crash...?
}
