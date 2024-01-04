.global _start
.intel_syntax noprefix

_start:
    # sys_write
    mov rax, 1              # sys_write() value
    mov rdi, 1              # unsigned int fd | stdout fd = 1
    lea rsi, [hello_world]  # const char *buf
    mov rdx, 13             # size_t count | size of string
    syscall
    jmp _terminate
    

hello_world:
    .asciz "Hello World!\n"


_terminate:
    mov rax, 60 # sys_exit() value
    mov rdi, 1  # int error_code
    syscall
