  /* Problema 3.1
  En este programa lo que se realiza es determinar el elemento menor de un vector e imprimirlo 
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
        .global minimo
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   minimo, %function
minimo:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        ldr     r3, [r0]
        mov     r2, #1
.L2:
        cmp     r2, r1
        blt     .L3
        mov     r0, r3
        bx      lr /*salimos*/
.L3:
        ldr     ip, [r0, r2, lsl #2] /*bucle para encontrar el minimo*/
        add     r2, r2, #1
        cmp     r3, ip
        movge   r3, ip
        b       .L2
        .size   minimo, .-minimo
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
        push    {r4, lr} /*salvamos los registros */
        mov     r1, #8
        ldr     r0, .L6
        bl      minimo /*llamada a la funcion minimo*/
        pop     {r4, lr} /*recuperamos registro*/
        mov     r1, r0
        ldr     r0, .L6+4
        b       printf    /*imprimimos*/
.L7:
        .align  2
.L6:
        .word   .LANCHOR0
        .word   .LC0
        .size   main, .-main
        .global vect
        .data
        .align  2
        .set    .LANCHOR0,. + 0
        .type   vect, %object
        .size   vect, 32
vect: /*Declaramos el vector y asignamos sus valores*/
        .word   8
        .word   10
         .word   -3
        .word   4
        .word   -1
        .word   50
        .word   2
        .word   3
        .section        .rodata.str1.1,"aMS",%progbits,1
.LC0:/*Declaramos el texto que imprimira junto con el valor*/
        .ascii  "el numero menor del vector es :  %d\012\000"
        .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
        .section        .note.GNU-stack,"",%progbits
