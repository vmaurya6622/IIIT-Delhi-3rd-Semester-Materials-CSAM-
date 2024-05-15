

TARGET=a.out
SOURCE=test.c
DEPEND=test.o

all: $(TARGET)

a.out: $(DEPEND)
	gcc $(DEPEND) -o $(TARGET)

$(DEPEND):
	gcc -c $(SOURCE)

run:
	./$(TARGET)
clean:
	rm -rf $(TARGET) *.o
