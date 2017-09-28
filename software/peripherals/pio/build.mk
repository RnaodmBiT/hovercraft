
%/pio.a: %/pio.o
	ar rcs $@ $^

%/pio.o: %/pio.cpp %/pio.hpp
	$(COMPILE) -I. -I../../stm32f4 -c -o $@ $<
