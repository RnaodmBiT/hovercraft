
%/sys.a: %/sys.o
	ar rcs $@ $^

%/sys.o: %/sys.c %/sys.h
	$(COMPILE) -I. -I../../stm32f4 -c -o $@ $<
