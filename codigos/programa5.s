/* Problema 2.5
  En este programa lo quearemos es declarar y llenar un vector de este vector sumaremos su elementos pero solo los de la columna 2  y como resultado para verificar que este correcto nos tiene que dar 104
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
        @ link register save eliminated.
        mov     r1, #104
        ldr     r0, .L2
        b       printf
.L3:
        .align  2
.L2:
        .word   .LC1
        .size   main, .-main
        .section        .rodata.str1.1,"aMS",%progbits,1
.LC1:
        .ascii  " La suma es %d \012\000"
         .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
        .section        .note.GNU-stack,"",%progbits
