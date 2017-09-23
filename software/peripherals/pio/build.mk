
%/pio.a: %/pio.o
	ar rcs $@ $^

%/pio.o: %/pio.c %/pio.h
	$(COMPILE) -I. -I../../stm32f4 -c -o $@ $<
