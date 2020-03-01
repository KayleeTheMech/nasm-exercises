global _start
_start:
    push 21
    call times2
    mov ebx, eax
    mov eax, 1
    int 0x80

times2:
; prolog
    push ebp            ; save current ebp value on top of stack
    mov ebp, esp        ; get address of stackpointer register into ebp register
; function
    mov eax, [ebp+8]    ; read value from stack address + 8
    add eax, eax        ; calculate times 2
; epilog 
    mov esp, ebp        ; restore stackpointer from ebp register
    pop ebp             ; restore ebp register from top of stack
    ret