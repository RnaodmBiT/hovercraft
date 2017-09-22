
FLASH_ADDR = 0x8000000

OBJS = $(addprefix objs/, $(SRCS:.c=.o))
DEPS = $(OBJS:.o=.d)
ELF = $(BIN:.bin=.elf)

#$(info SOURCES: $(SRCS))
#$(info OBJECTS: $(OBJS))

COMPILE = arm-none-eabi-gcc -MP -MD -fno-common -O0 -g -mcpu=cortex-m4 -mthumb -D$(CPU)
LINK = arm-none-eabi-ld -T../../link.ld -nostartfiles
OBJCOPY = arm-none-eabi-objcopy
PROGRAM = st-flash write

all: $(BIN) Makefile

$(ELF): $(OBJS)
	$(LINK) -o $@ $<

$(BIN): $(ELF)
	$(OBJCOPY) -O binary $< $@

objs/%.o: %.c
	@mkdir -p objs
	$(COMPILE) -I. -I../../stm32f4 -c -o $@ $<

program: $(BIN)
	$(PROGRAM) $(BIN) $(FLASH_ADDR)

clean:
	@rm -rf objs
	@rm $(BIN)
	@rm $(ELF)

-include $(DEPS)

