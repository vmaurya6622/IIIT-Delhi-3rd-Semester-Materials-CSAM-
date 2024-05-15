

TARGET=a.out
SOURCE=test.c
DEPEND=test.o foo.o

CFLAGS= -O3 -g
CXXFLAGS= -O3 -g

INCLUDE=-I./foo #you can change path according to location of .h file

all: $(TARGET)

a.out: $(DEPEND)
	gcc $(CFLAGS) $(DEPEND) -o $(TARGET)

$(DEPEND):
	gcc $(CFLAGS) $(INCLUDE) -c test.c
	gcc $(CFLAGS) $(INCLUDE) -c foo.c

run:
	./$(TARGET)
clean:
	rm -rf $(TARGET) *.o
