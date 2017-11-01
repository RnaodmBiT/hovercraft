#include <stm32f4xx.h>
#include <sys.hpp>
#include <pio.hpp>

#define FREQUENCY   (16.8)

void SysTickHandler();

// SysTick will generate millisecond events
static const int SysTickHz = 100000;

static volatile uint64_t ticks = 0;

// Define the status LEDs
Pio green(Pio::C, 13, Pio::Output);
Pio yellow(Pio::C, 14, Pio::Output);
Pio red(Pio::C, 15, Pio::Output);

// Define the output signals
Pio a_hi(Pio::A, 0, Pio::Output);
Pio a_lo(Pio::A, 1, Pio::Output);
Pio b_hi(Pio::A, 2, Pio::Output);
Pio b_lo(Pio::A, 3, Pio::Output);

// Define the channel signals that we will be generating
int signal[] = { 0, 1, 0, -1 };

void main(void) {
    System::Clock::InitSysTick(SysTickHz, SysTickHandler);

    // Turn off two of the LEDs
    yellow = red = true;

    while (1) {
        green = (ticks % (SysTickHz / 4)) < (SysTickHz / 8);

        double period = double(SysTickHz / FREQUENCY);
        double time = ticks / period;

        int index = int(time * ARRAY_SIZE(signal));

        int state = signal[index % ARRAY_SIZE(signal)];
        yellow = a_hi = b_lo = state == 1;
        red = a_lo = b_hi = state == -1;
    }
}


// SysTick interrupt will be called at 1000 Hz to generate millisecond timing
void SysTickHandler(void) {
    ++ticks;
}

