#include <sys.hpp>
#include <uart.hpp>
#include <pio.hpp>

volatile int millis = 0;
volatile bool transmit = false;
void SysTickHandler() {
    millis++;

    if (millis % 1000 == 0) {
        transmit = true;
    }
}

void main(void) {

    const char msg[] = "hello world!\r\n";

    Uart::Initialize();
    System::Clock::InitSysTick(1000, SysTickHandler);

    Pio green(Pio::C, 13, Pio::Output);
    bool state = false;

    for (;;) {
        if (transmit) {
            Uart::Write(msg);
            green = (state = !state);
            transmit = false;
        }
    }

    while (1) ;
}

