# classic hello world program in riscv64 linux
# check the syscall table down description below
.section .data
message: .ascii "Hello world\n"

.section .text
.globl _start
_start:
	# Write syscall
	li a7, 64 # write syscall number
	la a0, message # our messages address
	li a1, 1 # stdout number for linux
	li a2, 12 # length of our message

	ecall # make system call

	# Exit syscall
	li a7, 93 # exit syscall number
	li a0, 0 # 0 for successfull exit code

	ecall # make system call
