global main
extern printf

section .data
    msg db "Testing %i...", 0x0a, 0x00

main:
    ;prolog
    push ebp
    mov ebp, esp
    ; call external printf
    push 123
    push msg
    call printf
    mov eax, 0
    ;epilog
    mov esp, ebp
    pop ebp
    ret

; needs to be linked with "gcc -m32 (objfile) -o (elf_executable)""