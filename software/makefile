
FLASH_ADDR = 0x8000000

all: main.c link.ld makefile
	arm-none-eabi-gcc -I. -c -fno-common -O0 -g -mcpu=cortex-m4 main.c -mthumb
	arm-none-eabi-ld -Tlink.ld -nostartfiles -o image.elf main.o
	arm-none-eabi-objcopy -Obinary image.elf image.bin

program: all
	st-flash write image.bin $(FLASH_ADDR)
