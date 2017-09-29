
PERIPHERALS = $(PERIPHS) sys

FLASH_ADDR = 0x8000000

OBJS = $(addprefix objs/, $(SRCS:.cpp=.o))
DEPS = $(OBJS:.o=.d)

PERIPHERALS_DIR = ../../peripherals
LIB_SRCS = $(foreach DIR, $(PERIPHERALS), $(PERIPHERALS_DIR)/$(DIR)/$(DIR).cpp)
LIBS = $(LIB_SRCS:.cpp=.o)
PERIPHERAL_INC = $(foreach DIR, $(PERIPHERALS), -I$(PERIPHERALS_DIR)/$(DIR))

CXX_FLAGS = -fno-exceptions -fno-non-call-exceptions -fno-rtti \
            -fno-use-cxa-atexit -ffreestanding -fstack-protector-strong \
            -fno-common -ffunction-sections -fdata-sections

COMPILE = arm-none-eabi-g++ $(CXX_FLAGS) -O3 -g -mcpu=cortex-m4 -mthumb -D$(CPU) $(PERIPHERAL_INC)
LINK = arm-none-eabi-ld -T../../link.ld -nostartfiles
OBJCOPY = arm-none-eabi-objcopy
DEBUG = arm-none-eabi-gdb

all: $(ELF) Makefile

objs/%.o: %.cpp
	@mkdir -p objs
	$(COMPILE) -MP -MD -I. -I../../stm32f4 -c -o $@ $<

$(ELF): $(PERIPHERALS_DIR)/sys/sys.o $(OBJS) $(LIBS)
	$(LINK) -o $@ $^

program: $(ELF)
	$(DEBUG) -batch -x ../../gdb/program.gdb $^

reset: $(ELF)
	$(DEBUG) -batch -x ../../gdb/reset.gdb $^

debug: $(ELF)
	$(DEBUG) -x ../../gdb/debug.gdb $^

clean:
	rm -rf objs
	rm $(LIBS)
	rm $(ELF)

-include $(DEPS)

include $(foreach DIR, $(PERIPHERALS), $(PERIPHERALS_DIR)/$(DIR)/build.mk)

