global _start
_start:
    sub esp, 4
    mov [esp+1], byte "H"
    mov [esp+2], byte "e"
    mov [esp+3], byte "y"
    mov [esp+4], byte 0x0a
    mov ecx, esp
    mov edx, 4
    jmp write_ecx_edx_to_stdout

write_ecx_edx_to_stdout:
    mov eax, 4 ; sys_write
    mov ebx, 1 ; std_out
    int 0x80 ; do the thing
    jmp exit

exit:
    mov eax, 1  ; store sys_exit code in eax
    mov ebx, 0  ; exit code 0
    int 0x80
