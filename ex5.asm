global _start
section .data
    addr db "yellow", 0x0a

section .text
_start:
    mov [addr], byte 'H'
    mov [addr+5], byte '!'
    mov eax, 4 ; syswrite operation
    mov ebx, 1 ; stdout file desc
    mov ecx, addr ; bytes to write
    mov edx, 7 ; 7 bytes to write
    int 0x80 ; make the call
    jmp exit

exit:
    mov eax, 1  ; store sys_exit code in eax
    mov ebx, 0  ; exit code 0
    int 0x80
