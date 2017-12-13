#include "pwm.hpp"

Pwm* Pwm::slots[MAX_PWM_SLOTS] = { nullptr, nullptr, nullptr, nullptr, nullptr };
uint32_t Pwm::update_frequency = 1;
uint32_t Pwm::update_ticks = 0;


void Pwm::Initialize(uint32_t tick_rate) {
    update_frequency = tick_rate;
}


void Pwm::Update() {
    update_ticks++;

    for (int i = 0; i < MAX_PWM_SLOTS; ++i) {
        Pwm* pwm = slots[i];
        if (pwm) {

            uint32_t tick_period = update_frequency / pwm->frequency;
            uint32_t on_period = (tick_period * pwm->duty) / 1024;

            uint32_t t = update_ticks % tick_period;
            pwm->pin = (t <= on_period) && pwm->enabled;
        }
    }
}
