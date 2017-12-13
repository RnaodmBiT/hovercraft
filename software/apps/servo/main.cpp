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

    // Channel 0 will be used to control a servo at 100 Hz
    Pwm ch0(Pio::A, 0, 100, 100);

    green = false;
    yellow = red = true;

    uint32_t progress = 0;

    while (1) {
        System::DelayMs(10);

        ch0.SetServo(progress++ % 100);
    }
}


void SysTickHandler() {
    ++ticks;

    Pwm::Update();
}

