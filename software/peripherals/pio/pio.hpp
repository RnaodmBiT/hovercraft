#pragma once
#include <cstdint>

class Pio {
public:
    typedef uint8_t Pin;
    enum Port { A, B, C };
    enum Mode { Input, Output, Alternate, Analog };

    Pio(Port port, Pin pin);
    Pio(Port port, Pin pin, Mode mode);


    bool operator=(bool value);
    operator bool() const;


    static void EnablePort(Port port);

    void SetMode(Mode mode);


private:
    Port port;
    Pin pin;

    GPIO_TypeDef* GetPort(Port port) const;
};

