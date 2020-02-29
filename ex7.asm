global _start
_start:
    call func
    mov eax, 1
    int 0x80

func: 
    mov ebx, 42
    ret ; which does exactly what the next two lines write out
    ;pop eax ; get next address from stack 
    ;jmp eax ; jump back to execution