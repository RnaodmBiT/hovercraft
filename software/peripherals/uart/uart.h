#ifndef UART_H
#define UART_H

#include <stdint.h>
#include <stdbool.h>

// Setup the UART module
void uart_init(void);

// Write a single byte to the UART
void uart_write_byte(char c);

// Write a string to the UART
void uart_write_string(const char* s);

// Read a single byte from the UART
char uart_read_byte(void);

// Check if there is a byte to ready from the UART
bool uart_is_read_ready(void);

#endif
