
%/pwm.a: %/pwm.o
	ar rcs $@ $^

%/pwm.o: %/pwm.cpp %/pwm.hpp
	$(COMPILE) -I. -I../pio -I../../stm32f4 -c -o $@ $<
