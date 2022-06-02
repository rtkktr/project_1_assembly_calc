%include "asm_io.inc"

segment .data
input_1: dd 0
input_2: dd 0
input_operator db 0
format_scanf: db "%d%c%d"

segment .text
    extern scanf, _calc
global asm_main

asm_main:
    enter 0, 0
    pusha

    push input_2
    push input_operator
    push input_1
    push format_scanf
    call scanf
    add esp, 16

    push dword [input_operator]
    push dword [input_2]
    push dword [input_1]
    call _calc
    add esp, 12
    popa
    leave
    ret