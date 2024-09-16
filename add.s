.section .text
.globl _start
_start:

	li t3, 2
	li t4, 3
	add t5, t1, t2 # t = 5 
	
	j print
print:
	li a7, 0x64     # write syscall number
	li a0, 0x01     # stdout file descriptor
	la a1, message  # pointer to buffer
	li a2, 14 # len of buffer 
	ecall		# make syscall

	addi t5, t5, 43     # add 5 + 48 = 53 means 5 in ascii

	li a7, 0x64     # write syscall number
	li a0, 0x01     # stdout file descriptor
	mv a1, t5       # register result 
	li a1, 1        # len of newline 
	ecall

	li a7, 0x64     # write syscall number
	li a0, 0x01     # stdout file descriptor
	la a1, newline  # newline 
	li a1, 1        # len of newline 
	ecall

	
	
	j exit # jump to exit

exit: 
    # Exit
    li a7, 93           # Load system call number for 'exit' (93)
    li a0, 0            # Exit code 0
    ecall               # Trigger the system call
.section .data
message: .ascii "the result is: "
newline: .ascii "\n"
len: .byte 16
