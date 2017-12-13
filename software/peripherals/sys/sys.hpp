#pragma once
#include <cstdint>
#include <cstdbool>

#ifndef ARRAY_SIZE
#   define ARRAY_SIZE(x) (sizeof(x) / sizeof(*(x)))
#endif


typedef void (*IsrHandler)();


// Setup the system clock to run off the external crystal
void sys_setup_external_clock(void);

// Delay the given amount of time
void delay_us(unsigned long us);
void delay_ms(unsigned long ms);


namespace System {

    enum IRQ {
        SYSTICK = 15
    };


    class Clock {
    public:
        static void Initialize(int frequency = 100);

        static void InitSysTick(int frequency, IsrHandler fn);
        static void StopSysTick();
    };


    void DelayUs(uint32_t us);
    void DelayMs(uint32_t us);

    void RegisterInterrupt(int id, IsrHandler fn);

}

