TARGET=hello
OBJ=hello.o

all : $(TARGET)

$(TARGET): $(OBJ)
	ld -o $@ $(OBJ)

%.o: %.s
	as -gstabs -o $@ $<

clean:
	rm *.o
	rm $(TARGET)
