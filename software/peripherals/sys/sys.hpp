#ifndef SYS_H
#define SYS_H

#include <cstdint>
#include <cstdbool>


typedef void (*isr_handler_t)();


// Setup the system clock to run off the external crystal
void sys_setup_external_clock(void);

// Delay the given amount of time
void delay_us(unsigned long us);
void delay_ms(unsigned long ms);


#endif
