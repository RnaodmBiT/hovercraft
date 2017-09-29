#include <stm32f4xx.h>
#include <sys.hpp>
#include <pio.hpp>

static volatile int millis = 0;

void SysTickHandler(void) {
    ++millis;
}

void sleep(int ms) {
    int end = millis + ms;
    while (millis < end) asm("");
}

void main(void) {

    SysTick->VAL = 0;
    SysTick->LOAD = 100000; // This should give 1000Hz
    SysTick->CTRL |= (1 << SysTick_CTRL_CLKSOURCE_Pos) | (1 << SysTick_CTRL_TICKINT_Pos) | (1 << SysTick_CTRL_ENABLE_Pos);

    Pio green(Pio::C, 13, Pio::Output);
    Pio yellow(Pio::C, 14, Pio::Output);
    Pio red(Pio::C, 15, Pio::Output);

    while (1) {
        green = ((millis + 0) % 1000) < 500;
        yellow = ((millis + 333) % 1000) < 500;
        red = ((millis + 666) % 1000) < 500;
    }
}

