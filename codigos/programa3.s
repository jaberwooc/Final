      /* Problema 2.3
  En este programa lo que se realiza es un ciclo for poro con la instruccion tst implementada 
   @Autor Jaberwooc
   @Fecha 6 de diciembre de 2021
    */
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
        push    {r4, r5, r6, lr}
        mov     r4, #1
        ldr     r5, .L9
        ldr     r6, .L9+4
.L4:
        tst     r4, #1
        mov     r1, r4
        movne   r0, r6
        moveq   r0, r5
        add     r4, r4, #1
        bl      printf
        cmp     r4, #10
         bne     .L4
        pop     {r4, r5, r6, pc}
.L10:
        .align  2
.L9:
        .word   .LC1
        .word   .LC0
        .size   main, .-main
        .section        .rodata.str1.1,"aMS",%progbits,1
.LC0:
        .ascii  "%d es impar\012\000"
.LC1:
        .ascii  "%d es par\012\000"
        .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
        .section        .note.GNU-stack,"",%progbits
