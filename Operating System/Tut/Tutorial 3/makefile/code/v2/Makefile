

TARGET=a.out
SOURCE=test.c
DEPEND=test.o

CFLAGS= -O3 -std=c99
CXXFLAGS= -O3 -std=c++11

all: $(TARGET)

a.out: $(DEPEND)
	gcc $(CFLAGS) $(DEPEND) -o $(TARGET)

$(DEPEND):
	gcc $(CFLAGS) -c $(SOURCE)

run:
	./$(TARGET)
clean:
	rm -rf $(TARGET) *.o
