
%/uart.a: %/uart.o
	ar rcs $@ $^

%/uart.o: %/uart.c %/uart.h
	$(COMPILE) -I. -I../../stm32f4 -c -o $@ $<
