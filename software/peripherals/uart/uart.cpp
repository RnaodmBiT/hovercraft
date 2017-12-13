#include <stm32f4xx.h>
#include "uart.hpp"
#include <cstring>

void Uart::Initialize(int baud) {
    // Initialize USART1
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIOBEN; // Enable the clocks to GPIOA and B
    RCC->APB2ENR |= RCC_APB2ENR_USART1EN; // Enable the clocks to USART1

    // Initialize the GPIO pins for USART 1
    GPIOA->AFR[1] |= 0x70000000;
    GPIOB->AFR[0] |= 0x00007000;
    GPIOA->MODER |= GPIO_MODER_MODER15_1;
    GPIOB->MODER |= GPIO_MODER_MODER3_1;

    int clock = 100000000; // TODO: Get this from the System class
    USART1->BRR = clock / baud;

    // Enable transmission/reception
    USART1->CR1 |= USART_CR1_UE | USART_CR1_TE | USART_CR1_RE;
}


void Uart::Write(char byte) {
    while ((USART1->SR & USART_SR_TXE) == 0) ;
    USART1->DR = byte;
}


void Uart::Write(const char* string) {
    Write(string, strlen(string));
}


void Uart::Write(const char* string, int length) {
    for (int i = 0; i < length; ++i) {
        Write(string[i]);
    }
}


char Uart::Read() {
    while (!HasData()) ;
    return USART1->DR & 0xFF;
}


bool Uart::HasData() {
    return (USART1->SR & USART_SR_RXNE) != 0;
}
