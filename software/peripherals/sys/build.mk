
%/sys.a: %/sys.o
	ar rcs $@ $^
	rm $^

%/sys.o: %/sys.cpp %/sys.hpp
	$(COMPILE) -I. -I../../stm32f4 -c -o $@ $<

