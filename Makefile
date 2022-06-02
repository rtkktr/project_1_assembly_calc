a.out: asm_io.o driver.o sum.o sub.o mul.o div.o rem.o calc.o main.o
	gcc -m32 driver.o main.o calc.o sum.o sub.o mul.o div.o rem.o  asm_io.o
asm_io.o:
	nasm -f elf -d ELF_TYPE asm_io.asm
driver.o:
	gcc -m32 -c driver.c
sum.o:
	nasm -f elf sum.asm
sub.o:
	nasm -f elf sub.asm
mul.o:
	nasm -f elf mul.asm
div.o:
	nasm -f elf div.asm
rem.o:
	nasm -f elf rem.asm
calc.o:
	nasm -f elf calc.asm
main.o:
	nasm -f elf main.asm