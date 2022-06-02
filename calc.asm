%include "asm_io.inc"
global _calc

segment .text
extern _sum, _sub, _mul, _div, _rem
_calc:
    enter 0, 0
    pusha
    mov cl, [ebp + 16]
    push dword [ebp + 12]
    push dword [ebp + 8]
    cmp cl, 43 ; +
    je sm
    cmp cl, 45 ; -
    je sb
    cmp cl, 42 ; *
    je m
    cmp cl, 47 ; /
    je d
    cmp cl, 37 ; %
    je r
sm:
    call _sum
    add esp, 8
    jmp lbl_end
sb:
    call _sub
    add esp, 8
    jmp lbl_end
m:
    call _mul
    add esp, 8
    jmp lbl_end
d:
    call _div
    add esp, 8
    jmp lbl_end
r:
    call _rem
    add esp, 8
    jmp lbl_end

lbl_end:
    popa
    leave
    ret