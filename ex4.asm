global _start

section .text
_start:
    mov ebx, 1 ; start ebx at 1
    mov ecx, 7 ; number of iterations
loop:
    add ebx, ebx ; ebx+=ebx
    dec ecx    ; ecx-=1
    cmp ecx, 0 ; cmp ecx with 0
    jg loop    ; jump if ecx greater than
    jmp exit


exit:
    ;mov ebx, 0  ; exit code 0
    mov eax, 1  ; store sys_exit code in eax
    int 0x80