
%/uart.a: %/uart.o
	ar rcs $@ $^

%/uart.o: %/uart.cpp %/uart.hpp
	$(COMPILE) -I. -I../../stm32f4 -c -o $@ $<
