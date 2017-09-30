#include <stm32f4xx.h>
#include <sys.hpp>
#include <pio.hpp>

void SysTickHandler();

// SysTick will generate millisecond events
static const int SysTickHz = 1000;

static volatile int millis = 0;

// Define the status LEDs
Pio green(Pio::C, 13, Pio::Output);
Pio yellow(Pio::C, 14, Pio::Output);
Pio red(Pio::C, 15, Pio::Output);

void main(void) {
    System::Clock::InitSysTick(SysTickHz, SysTickHandler);

    while (1) {
        green = ((millis + 0) % 100) < 50;
        yellow = ((millis + 33) % 100) < 50;
        red = ((millis + 66) % 100) < 50;
    }
}


// SysTick interrupt will be called at 1000 Hz to generate millisecond timing
void SysTickHandler(void) {
    ++millis;
}

