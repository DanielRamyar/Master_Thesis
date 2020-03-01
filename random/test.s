.global __start

__start:
    addi a6, zero, 8
    addi a7, zero, 7
    addi sp, sp, -32
    add s2, a7, a6
    sw s2, sp, 0
    beq t3, t4, -4