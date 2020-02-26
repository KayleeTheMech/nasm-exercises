global _start

section .text
_start:
    mov ecx, 101 ;
    mov ebx, 42 ; exit status 42
    mov eax, 1  ; store sys_exit code in eax
    cmp ecx, 100
    jl skip    ; jump if less...
    mov ebx, 240 ; 
skip:
    int 0x80    ; interrupt to do syscall