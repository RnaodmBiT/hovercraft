#ifndef PIO_H
#define PIO_H

#include <stdint.h>
#include <stdbool.h>

typedef struct {
    uint8_t port;
    uint8_t pin;
    uint16_t mask;
} __attribute__((packed)) pio_t;


typedef enum { PIO_A, PIO_B, PIO_C } pio_port_t;
typedef enum { PIO_INPUT, PIO_OUTPUT } pio_mode_t;

/* enable clock for the given PIO port */
void pio_enable_port(pio_port_t port);

/* set pin mode as input or output */
void pio_set_mode(pio_t pin, pio_mode_t mode);

/* set the pin output state */
void pio_set_output(pio_t pin, bool high);


/* Define all of the usable PIO pins */
#define MAKE_PIO(PORT, PIN) ((pio_t){ .port=(PORT), .pin=(PIN), .mask=1 << (PIN) })

#define PA0     MAKE_PIO(0, 0)
#define PA1     MAKE_PIO(0, 1)
#define PA2     MAKE_PIO(0, 2)
#define PA3     MAKE_PIO(0, 3)
#define PA4     MAKE_PIO(0, 4)
#define PA5     MAKE_PIO(0, 5)
#define PA6     MAKE_PIO(0, 6)
#define PA7     MAKE_PIO(0, 7)
#define PA8     MAKE_PIO(0, 8)
#define PA9     MAKE_PIO(0, 9)
#define PA10    MAKE_PIO(0, 10)
#define PA11    MAKE_PIO(0, 11)
#define PA12    MAKE_PIO(0, 12)
#define PA13    MAKE_PIO(0, 13)
#define PA14    MAKE_PIO(0, 14)
#define PA15    MAKE_PIO(0, 15)


#define PB0     MAKE_PIO(1, 0)
#define PB1     MAKE_PIO(1, 1)
#define PB2     MAKE_PIO(1, 2)
#define PB3     MAKE_PIO(1, 3)
#define PB4     MAKE_PIO(1, 4)
#define PB5     MAKE_PIO(1, 5)
#define PB6     MAKE_PIO(1, 6)
#define PB7     MAKE_PIO(1, 7)
#define PB8     MAKE_PIO(1, 8)
#define PB9     MAKE_PIO(1, 9)
#define PB10    MAKE_PIO(1, 10)
#define PB11    MAKE_PIO(1, 11)
#define PB12    MAKE_PIO(1, 12)
#define PB13    MAKE_PIO(1, 13)
#define PB14    MAKE_PIO(1, 14)
#define PB15    MAKE_PIO(1, 15)


#define PC13    MAKE_PIO(2, 13)
#define PC14    MAKE_PIO(2, 14)
#define PC15    MAKE_PIO(2, 15)

#endif
