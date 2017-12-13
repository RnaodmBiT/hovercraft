#include <stm32f4xx.h>
#include <sys.hpp>
#include <pio.hpp>
#include <pwm.hpp>

void SysTickHandler();

static const int SysTickHz = 100000;

static volatile int ticks = 0;

// Define the status LEDs
Pio green(Pio::C, 13, Pio::Output);
Pio yellow(Pio::C, 14, Pio::Output);
Pio red(Pio::C, 15, Pio::Output);


void main() {
    System::Clock::InitSysTick(SysTickHz, SysTickHandler);
    Pwm::Initialize(SysTickHz);

    Pwm ch0(Pio::A, 0, 100, 512);
    Pwm ch1(Pio::A, 1, 100, 64);
    Pwm ch2(Pio::A, 2, 250, 768);
    Pwm ch3(Pio::A, 3, 250, 123);
    Pwm ch4(Pio::A, 6, 10, 512);
    Pwm ch5(Pio::A, 7, 15, 512);

    green = false;
    yellow = red = true;

    while (1) {
    }
}


// SysTick interrupt will be called at 1000 Hz to generate millisecond timing
void SysTickHandler() {
    ++ticks;

    Pwm::Update();
}

