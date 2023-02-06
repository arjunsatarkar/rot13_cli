.POSIX:

CC = gcc
CFLAGS = -std=c99 -Wall -Wextra -Wpedantic -Werror -O3

rot13: rot13.o

rot13.o: rot13.c rot13.h

format:
	clang-format -i --verbose --style=LLVM *.c *.h
	black *.py

clean:
	rm -vf rot13.o rot13
