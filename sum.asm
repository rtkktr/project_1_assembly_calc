%include "asm_io.inc"
global _sum

segment .text

_sum:
    enter 0, 0
    pusha

    mov eax, [ebp + 12]
    add eax, [ebp + 8]
    call print_int
    call print_nl

    popa
    leave
    ret