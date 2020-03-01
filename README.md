# A couple of exercises x86 assembler

### compile and link code:
- 'nasm -f elf32 X.asm -o X.o'
- 'ld -m elf_i386 X.o -o X'

### except for the c code which calls the asm function
- 'nasm -f elf32 add42.asm -o add42.o
- 'gcc -m32 add42.o main.c -o add42"

