#include <stm32f4xx.h>
#include "sys.hpp"

extern char __stack, __data_load, __data_start, __data_end, __bss_start, __bss_end;

// These are defined in the link.ld script. They represent a list of C++ constructors
extern void (*__init_array_start)();
extern void (*__init_array_end)();

void main();

namespace System {

    void ResetHandler();
    void DefaultHandler();

    void SetupMemory();
    void CallConstructors();


    // Define the static vector table. This is only used until the dynamic table is initalized.
    __attribute__ ((section(".vectors")))
    IsrHandler StaticVectorTable[16] = {
        (IsrHandler) &__stack,
        ResetHandler,           // Reset
        DefaultHandler,         // NMI
        DefaultHandler,         // Hard Fault
        DefaultHandler,         // Memory management
        DefaultHandler,         // Bus fault
        DefaultHandler,         // Usage fault
        0, 0, 0, 0,             // Reserved
        DefaultHandler,         // SVCall
        0, 0,                   // Reserved
        DefaultHandler,         // PendSV
        DefaultHandler,         // SysTick
    };

    __attribute__ ((section(".dynamic_vectors")))
    IsrHandler VectorTable[113] = {
        (IsrHandler) &__stack,
        ResetHandler,           // Reset
        DefaultHandler,         // NMI
        DefaultHandler,         // Hard Fault
        DefaultHandler,         // Memory management
        DefaultHandler,         // Bus fault
        DefaultHandler,         // Usage fault
        0, 0, 0, 0,             // Reserved
        DefaultHandler,         // SVCall
        0, 0,                   // Reserved
        DefaultHandler,         // PendSV
        DefaultHandler,         // SysTick
    };


    // Default interrupt handler. Called when an interrupt fires but no handler was set.
    void DefaultHandler() {
        while (1);
    }


    // Layout all the sections in SRAM
    void SetupMemory() {
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
        SCB->VTOR = (uint32_t) &VectorTable & SCB_VTOR_TBLOFF_Msk;
    }


    // Initialize all the C++ global objects
    void CallConstructors() {

        for (void (**p)() = &__init_array_start; p < &__init_array_end; ++p) {
            (*p)();
        }
    }


    // Reset handler is the where the microcontroller boots into.
    // This should set the system into a good working state, then call main().
    void ResetHandler() {
        Clock::Initialize(); // TODO: Do we want another frequency?

        SetupMemory();

        CallConstructors();

        main();

        while (1);
    }


    void Clock::Initialize(int frequency) {

        // Enable the high speed external oscillator
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
                       ((4 * frequency) << 6) & RCC_PLLCFGR_PLLN; // Set N = 400

        // F_CPU = F_IN * (N / (M * P))
        // F_CPU = 12M * (400 / (12 * 4))
        // F_CPU = 100MHz

        // Enable the PLL
        RCC->CR |= RCC_CR_PLLON;

        // Wait for the PLL to be ready (This is ignored for now, it should just flip over automatically when its ready)
        while ((RCC->CR & RCC_CR_PLLRDY) == 0);

        // Switch over to the PLL
        RCC->CFGR |= RCC_CFGR_SW_PLL;

        while ((RCC->CFGR & RCC_CFGR_SWS_PLL) == 0);
    }


    void Clock::InitSysTick(int frequency, IsrHandler fn) {
        RegisterInterrupt(SYSTICK , fn);

        SysTick->VAL = 0;
        SysTick->LOAD = 100000000 / frequency;
        SysTick->CTRL = (1 << SysTick_CTRL_CLKSOURCE_Pos) |
                        (1 << SysTick_CTRL_TICKINT_Pos) |
                        (1 << SysTick_CTRL_ENABLE_Pos);
    }


    void Clock::StopSysTick() {
        SysTick->CTRL &= (1 << SysTick_CTRL_ENABLE_Pos);
    }


    // Delay for a certain amount of time
    void DelayUs(uint32_t us) {
        // This is more or less witchcraft but it does work...
        uint32_t l = (us * 100) / 3;
        asm volatile("0:" "subs %[count], 1;" "bne 0b;" : [count] "+r"(l));
    }


    void DelayMs(uint32_t ms) {
        for (int i = 0; i < ms; ++i) {
            DelayUs(1000);
        }
    }


    // Store the given IsrHandler in the vector table
    void RegisterInterrupt(int id, IsrHandler fn) {
        VectorTable[id] = fn;
    }



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
    }
}

// Define the delete operators
void operator delete(void* p) {
    // TODO: This should crash noticeably... we don't want to hit this
    while (1);
}


void operator delete(void* p, std::size_t t) {
    // TODO: This should also crash...?
    while (1);
}

