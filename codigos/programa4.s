      .arch armv6
        .eabi_attribute 28, 1
        .eabi_attribute 20, 1
        .eabi_attribute 21, 1
        .eabi_attribute 23, 3
        .eabi_attribute 24, 1
        .eabi_attribute 25, 1
        .eabi_attribute 26, 2
        .eabi_attribute 30, 4
        .eabi_attribute 34, 1
        .eabi_attribute 18, 4
        .file   "t1.c"
        .text
        .section        .text.startup,"ax",%progbits
        .align  2
        .global main
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   main, %function
main:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r4, .L12
        ldr     r5, .L12+4
        ldr     r6, .L12+8
        ldr     r7, .L12+12
.L6:
        ands    r3, r4, #3
        moveq   r1, r4
        moveq   r0, r5
        beq     .L11
        cmp     r3, #2
        moveq   r1, r4
        moveq   r0, r7
        movne   r1, r4
        movne   r0, r6
.L11:
        bl      printf
        ldr     r3, .L12+16
        add     r4, r4, #1
        cmp     r4, r3
        bne     .L6
        pop     {r4, r5, r6, r7, r8, pc}
.L13:
        .align  2
.L12:
        .word   1950
        .word   .LC0
        .word   .LC2
        .word   .LC1
           .word   2015
        .size   main, .-main
        .section        .rodata.str1.1,"aMS",%progbits,1
.LC0:
        .ascii  "En %d hubo olimpiadas\012\000"
.LC1:
        .ascii  "En %d hubo mundial de futbol\012\000"
.LC2:
        .ascii  "En %d no paso nada\012\000"
        .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
        .section        .note.GNU-stack,"",%progbits
