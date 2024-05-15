

TARGET=libfoo.so
SOURCE=foo.c
DEPEND=foo.o

CFLAGS= -O3 -g
CXXFLAGS= -O3 -g


all: $(TARGET)

$(TARGET):$(DEPEND)
	gcc --shared -o $(TARGET) $(DEPEND)

$(DEPEND):
	gcc $(CFLAGS) -c $(SOURCE)

clean:
	rm -rf *.o *.so
