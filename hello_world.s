.global _start
.intel_syntax noprefix

_start:
    # Call sys_write() with Hello World string, then terminate
    mov rax, 1              # 1 -> sys_write()
    mov rdi, 1              # unsigned int fd -> stdout fd is 1
    lea rsi, [hello_world]  # const char *buf -> "Hello World!\n"
    mov rdx, 13             # size_t count -> size of string is 13
    syscall
    jmp _terminate
    

hello_world:
    .asciz "Hello World!\n"


_terminate:
    mov rax, 60 # sys_exit() value
    mov rdi, 1 # int error_code
    syscall
