# Compiler
CC = gcc
CFLAGS = -Wall

# Build all programs
all: process_creation linker_example simple_program

# Build process_creation program
process_creation: process_creation.c
	$(CC) $(CFLAGS) process_creation.c -o process_creation

# Build linker example (file1 + file2)
linker_example: file1.c file2.c
	$(CC) $(CFLAGS) file1.c file2.c -o linker_output

# Build simple program
simple_program: simple_program.c
	$(CC) $(CFLAGS) simple_program.c -o simple_program

# Clean all generated files
clean:
	rm -f process_creation linker_output simple_program
