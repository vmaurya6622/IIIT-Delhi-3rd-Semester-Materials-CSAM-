CC:=gcc
CFLAGS=-I.
DEPS=dep.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
main: main.o dep.o
	$(CC) -o main main.o dep.o
run:
	./main
clean:
	rm -f *.o main
