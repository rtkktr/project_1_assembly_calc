%include "asm_io.inc"
global _rem

segment .text

_rem:
    enter 0, 0
    pusha

    mov ebx, [ebp + 12]
    mov eax, [ebp + 8]
    cmp ebx, 0
    je lblEnd
    mov edx, 0
    idiv ebx
    mov eax, edx
    call print_int
    call print_nl
lblEnd:
    popa
    leave
    ret