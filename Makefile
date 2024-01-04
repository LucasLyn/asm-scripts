GCC=gcc -g -Wall -Wextra -pedantic -std=gnu11 -nostdlib -static

all: hello_world

hello_world.o: hello_world.s
	rm -rf hello_world hello_world.o
	as hello_world.s -o $@

hello_world: hello_world.o
	$(GCC) $< -o $@

