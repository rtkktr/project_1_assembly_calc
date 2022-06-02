%include "asm_io.inc"
global _mul

segment .text

_mul:
    enter 0, 0
    pusha

    mov ebx, [ebp + 8]
    mov eax, [ebp + 12]
    imul ebx
    call print_int
    call print_nl

    popa
    leave
    ret