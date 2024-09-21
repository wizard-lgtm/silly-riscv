# this would be the most basic hello world app for every programming tutorial
# but you know, we have to do it

.section .data # Constant data section
    message: .ascii "Hello world!\n" # our message

.section .text # Code section
.globl _start # code start section

# Argument registers are going through a0 to a7 
# a0..a6 -> arguments
# a7 -> syscall number
_start:
    # Make Write syscall 
    li a0, 1 # stdout file desctiptor 
    la a1, message # load pointer of message
    li a2, 13 # load length of the message
    li a7, 64 # riscv linux write syscall 
    ecall # make the syscall 

    # Make Exit syscall 
    li a0, 0 # 0 code for exiting as successfully (no error)
    li a7, 93 # riscv linux exit syscall
    ecall # make the syscall
