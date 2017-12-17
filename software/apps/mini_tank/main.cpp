#include <stm32f4xx.h>
#include <sys.hpp>
#include <pio.hpp>
#include <pwm.hpp>
#include <uart.hpp>

void SysTickHandler();

static const int SysTickHz = 100000;

static volatile int ticks = 0;

static volatile int timeout = 0;

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

    int x = 0, y = 0;


    while (1) {
        if (timeout == 0) {
            x = y = 0;
        }

        if (Uart::HasData()) {
            if (Uart::Read() == 74) {
                x = (int)Uart::Read() - 127;
                y = (int)Uart::Read() - 127;
                timeout = SysTickHz / 5;
            }
        }

        int l = ((-y + x) * 100) / 127;
        int r = ((-y - x) * 100) / 127;

        if (l > 100) {
            l = 100;
        }
        if (l < 0) {
            l = 0;
        }

        if (r > 100) {
            r = 100;
        }
        if (r < 0) {
            r = 0;
        }


        left.SetServo(l);
        right.SetServo(r);

        // Used as a visual output of what *should* be happening
        left_led.SetDuty(1000 - 10 * l);
        right_led.SetDuty(1000 - 10 * r);
    }
}


void SysTickHandler() {
    ++ticks;
    Pwm::Update();

    if (timeout > 0) {
        timeout--;
    }
}

