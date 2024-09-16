    .section .text
    .globl _start

_start:
    csrr a0, mstatus
    # Exit the program (use sys_exit syscall)
    li a7, 93         # sys_exit syscall number
    ecall             # Exit
