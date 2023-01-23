CC=gcc
CFLAGS=-I.
DEPS = chunk.h common.h debug.h memory.h value.h
OBJ = main.o chunk.o debug.o memory.o value.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

clox: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)