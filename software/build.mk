
PERIPHERALS = $(PERIPHS) sys

FLASH_ADDR = 0x8000000

OBJS = $(addprefix objs/, $(SRCS:.c=.o))
DEPS = $(OBJS:.o=.d)
ELF = $(BIN:.bin=.elf)

PERIPHERALS_DIR = ../../peripherals
LIBS = $(foreach DIR, $(PERIPHERALS), $(PERIPHERALS_DIR)/$(DIR)/$(DIR).a)
PERIPHERAL_INC = $(foreach DIR, $(PERIPHERALS), -I$(PERIPHERALS_DIR)/$(DIR))

COMPILE = arm-none-eabi-gcc -fno-common -O3 -g -mcpu=cortex-m4 -mthumb -D$(CPU) $(PERIPHERAL_INC)
LINK = arm-none-eabi-ld -T../../link.ld -nostartfiles
OBJCOPY = arm-none-eabi-objcopy
DEBUG = arm-none-eabi-gdb


all: $(ELF) Makefile

$(ELF): $(PERIPHERALS_DIR)/sys/sys.o $(OBJS) $(LIBS)
	$(LINK) -o $@ $^

$(BIN): $(ELF)
	$(OBJCOPY) -O binary $< $@

objs/%.o: %.c
	@mkdir -p objs
	$(COMPILE) -MP -MD -I. -I../../stm32f4 -c -o $@ $<

program: $(ELF)
	$(DEBUG) -batch -x ../../gdb/program.gdb $^

reset: $(ELF)
	$(DEBUG) -batch -x ../../gdb/reset.gdb $^

debug: $(ELF)
	$(DEBUG) -x ../../gdb/debug.gdb $^

clean:
	@rm -rf objs
	@rm $(LIBS)
	@rm $(BIN)

-include $(DEPS)

include $(foreach DIR, $(PERIPHERALS), $(PERIPHERALS_DIR)/$(DIR)/build.mk)
