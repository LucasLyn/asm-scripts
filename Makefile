AS=as -g
GCC=gcc -g -Wall -Wextra -pedantic -std=gnu11 -nostdlib -static

all: hello_world

# Hello world scripts
hello_world.o: hello_world.s
	rm -rf hello_world hello_world.o
	$(AS) hello_world.s -o $@

hello_world: hello_world.o
	$(GCC) $< -o $@


# Hello world in color scripts
#hello_world_color.o: hello_world_color.s
#	rm -rf hello_world_color hello_world_color.o
#	$(AS) hello_world_color.s -o $@

#hello_world_color: hello_world_color.o
#	$(GCC) $< -o $@

# Add num scripts
#add_num.o: add_num.s
#	rm -rf add_num add_num.o
#	$(AS) add_num.s -o $@

#add_num: add_num.o
#	$(GCC) $< -o $@
