%include "asm_io.inc"
global _sub

segment .text

_sub:
    enter 0, 0
    pusha

    mov eax, [ebp + 8]
    sub eax, [ebp + 12]
    call print_int
    call print_nl

    popa
    leave
    ret