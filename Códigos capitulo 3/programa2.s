   /* Problema 3.2
  En este programa lo que se realiza es ordenar los elementos de un vector e imprimirlo 
   @Autor Jaberwooc
   @Fecha 7 de diciembre de 2021
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
        .align  2
        .global ordena
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   ordena, %function
ordena:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        sub     r2, r1, #1
        sub     r3, r1, r2
        cmp     r1, r3
        bxle    lr
        push    {r4, lr}
.L5:
        mov     r3, r0
        mov     ip, #0
.L4:
        ldr     lr, [r3]
        ldr     r4, [r3, #4]!
        add     ip, ip, #1
        cmp     lr, r4
          stmdagt r3, {r4, lr}
        cmp     ip, r2
        blt     .L4
        sub     r2, r2, #1
        sub     r3, r1, r2
        cmp     r1, r3
        bgt     .L5
        pop     {r4, pc}
        .size   ordena, .-ordena
        .section        .text.startup,"ax",%progbits
        .align  2
        .global main
        .syntax unified
        .arm
        .fpu vfp
        .type   main, %function
main:
 @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        push    {r4, r5, r6, lr}
        mov     r1, #8
        ldr     r0, .L17
        bl      ordena
        ldr     r5, .L17
        ldr     r6, .L17+4
        mov     r4, #0
.L13:
        ldr     r1, [r5], #4
        mov     r0, r6
        add     r4, r4, #1
        bl      printf
        cmp     r4, #8
        bne     .L13
        pop     {r4, r5, r6, pc}
.L18:
        .align  2
.L17:
        .word   .LANCHOR0
        .word   .LC0
        .size   main, .-main
        .global vect
        .data
        .align  2
        .set    .LANCHOR0,. + 0
        .type   vect, %object
        .size   vect, 32
vect:
        .word   8
        .word   10
        .word   -3
        .word   4
        .word   -5
         .word   50
        .word   2
        .word   3
        .section        .rodata.str1.1,"aMS",%progbits,1
.LC0:
        .ascii  " %d\012 \000"
        .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
        .section        .note.GNU-stack,"",%progbits
