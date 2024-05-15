

TARGET=a.out
SOURCE=test.c
DEPEND=test.o

CFLAGS= -O3 -g
CXXFLAGS= -O3 -g

INCLUDE=-I./foo #you can change path according to location of .h file

LINKING=-L./foo

all: $(TARGET)

a.out: $(DEPEND)
	gcc $(CFLAGS) $(DEPEND) -o $(TARGET) $(LINKING) -lfoo

$(DEPEND):
	gcc $(CFLAGS) $(INCLUDE) -c test.c

run:
	./$(TARGET)
clean:
	rm -rf $(TARGET) *.o
