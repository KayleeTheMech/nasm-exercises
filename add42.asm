global add42
add42:
    ; prolog
    push ebp
    mov ebp, esp
    ; get argument
    mov eax, [ebp + 8]
    ; do things, store result in eax
    add eax, 42
    ; epilog
    mov esp, ebp
    pop ebp
    ret