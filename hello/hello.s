.section .data
hello_txt:  .asciz  "Hello, World!\n"
    msg_len = . - hello_txt     # define a *symbol* to represent the length of the 'hello_txt' string

.section .text
.globl _start

_start:

    movq    $1, %rax            # sys_write
    movq    $1, %rdi            # stdout
    movq    $hello_txt, %rsi    # use '$' to get address-of 'hello_txt'
    movq    $msg_len, %rdx      # use '$' to reference the symbol 'msg_len' defined above
    syscall

    movq    $60, %rax           # sys_exit
    movq    $0, %rdi            # exit code
    syscall
