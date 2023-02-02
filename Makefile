CC=gcc
CFLAGS=-I.
DEPS = chunk.h common.h debug.h memory.h value.h vm.h compiler.h scanner.h
OBJ = main.o chunk.o debug.o memory.o value.o vm.o compiler.o scanner.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

clox: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)