riscv64-linux-gnu-as -o mstatus.o mstatus.s
riscv64-linux-gnu-ld -o mstatus.elf mstatus.o
qemu-riscv64 -L /path/to/riscv/sysroot ./mstatus.elf

