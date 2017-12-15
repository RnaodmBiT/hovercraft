#pragma once
#include <pio.hpp>

#define MAX_PWM_SLOTS 10

class Pwm {
private:
    static Pwm* slots[MAX_PWM_SLOTS];
    static uint32_t update_frequency, update_ticks;

public:

    static void Initialize(uint32_t tick_rate);

    static void Update();

    Pwm(Pio::Port port, Pio::Pin pin,
         uint32_t frequency, uint32_t duty,
         bool enabled = true) :
         pin(port, pin, Pio::Output),
         frequency(frequency),
         duty(duty),
         enabled(enabled) {

         slot_id = 0xFF;

         for (int i = 0; i < MAX_PWM_SLOTS; ++i) {
             if (slots[i] == nullptr) {
                 slots[i] = this;
                 slot_id = i;
                 break;
             }
         }
    }

    ~Pwm() {
        if (slot_id != 0xFF) {
            slots[slot_id] = nullptr;
        }
    }

    Pwm(const Pwm&) = delete;
    Pwm& operator=(const Pwm&) = delete;

    Pwm(Pwm&&) = delete;
    Pwm& operator=(Pwm&&) = delete;

    void SetFrequency(uint32_t f) {
        frequency = f;
    }

    void SetDuty(uint32_t d) {
        duty = d;
    }

    void SetServo(int32_t s) {
        if (s < 0) {
            s = 0;
        }

        if (s > 100) {
            s = 100;
        }

        duty = 100 + s;
    }

    void SetActive(bool active) {
        enabled = active;
    }

private:
    Pio pin;
    uint32_t frequency;
    uint32_t duty;
    bool enabled;

    uint8_t slot_id;

};



