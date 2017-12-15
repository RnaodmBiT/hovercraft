#include <stm32f4xx.h>
#include <sys.hpp>
#include <pio.hpp>
#include <pwm.hpp>
#include <uart.hpp>

void SysTickHandler();

static const int SysTickHz = 100000;

static volatile int ticks = 0;

// Define the status LEDs
Pio green(Pio::C, 13, Pio::Output);
Pio yellow(Pio::C, 14, Pio::Output);
Pio red(Pio::C, 15, Pio::Output);

// Define the left and right motors
Pwm left_led(Pio::C, 15, 100, 100);
Pwm right_led(Pio::C, 13, 100, 100);

Pwm left(Pio::A, 0, 100, 100);
Pwm right(Pio::A, 1, 100, 100);


void main() {
    // Initialize the system
    System::Clock::InitSysTick(SysTickHz, SysTickHandler);
    Pwm::Initialize(SysTickHz);
    Uart::Initialize();

    // Turn off the status LEDs
    green = yellow = red = true;

    int8_t f = 0, l = 0, r = 0;


    while (1) {
        if (Uart::HasData()) {
            if (Uart::Read() == 74) {
                f = Uart::Read();
                l = Uart::Read();
                r = Uart::Read();
            }
        }

        // left:
        // up -> 100
        // up + right -> 100
        // up + left -> 30
        // right -> 100

        left.SetServo((f || r) * 100 - l * 70);
        right.SetServo((f || l) * 100 - r * 70);

        // Used as a visual output of what *should* be happening
        left_led.SetDuty(1000 - 10 * ((f || r) * 100 - l * 70));
        right_led.SetDuty(1000 - 10 * ((f || l) * 100 - r * 70)); }
}


void SysTickHandler() {
    ++ticks;
    Pwm::Update();
}

