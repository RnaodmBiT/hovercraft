#include <stm32f4xx.h>
#include "uart.h"


void uart_init(void) {
    // Initialize USART1
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIOBEN; // Enable the clocks to GPIOA and B
    RCC->APB2ENR |= RCC_APB2ENR_USART1EN; // Enable the clocks to USART1

    // Initialize the GPIO pins for USART 1
    GPIOA->AFR[1] |= 0x70000000;
    GPIOB->AFR[0] |= 0x00007000;
    GPIOA->MODER |= GPIO_MODER_MODER15_1;
    GPIOB->MODER |= GPIO_MODER_MODER3_1;

    // The preipheral clock should be running at 50MHz
    // The oversampling is 16x
    // The target baud rate is 115200 bps
    // USARTDIV = 50 MHz / (16 * 115200) = 27.127
    // Theoretically anyway, experimentation showed that the divider needed to be a bit larger

    // Set the baud rate
    USART1->BRR = ((33 << 4) & USART_BRR_DIV_Mantissa) | (13 & USART_BRR_DIV_Fraction);

    // Enable transmission/reception
    USART1->CR1 |= USART_CR1_UE | USART_CR1_TE | USART_CR1_RE;
}


void uart_write_byte(char c) {
    while ((USART1->SR & USART_SR_TXE) == 0) ;
    USART1->DR = c;
}


void uart_write_string(const char* s) {
    while (*s) {
        uart_write_byte(*s++);
    }
}


char uart_read_byte(void) {
    return USART1->DR & 0xFF;
}


bool uart_is_read_ready(void) {
    return (USART1->SR & USART_SR_RXNE) != 0;
}
