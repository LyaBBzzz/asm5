%include"io.inc"
section .data
X: dd 1
A: dd 1
i: dd 0
e: dd 2.7
section .text
global main

main:
    mov ebp, esp; for correct debugging
    PRINT_DEC 4,[X]
    NEWLINE
    PRINT_DEC 4,[X]
    NEWLINE
    
    finit
    
    fld dword[X]   ; результат в Х
    fsub dword[A]
    fsin
    mov dword[i],5
    fimul dword[i]
    fstp dword[X]

    mov dword[i],16   ; результат в Х
    fld dword[i]
    mov dword[i],4
    fidiv dword[i]
    fadd dword[X]
    fstp dword[X]

    mov dword[i],14   ; результат в Х
    fld dword[i]
    mov dword[i],4
    fsub dword[i]
    mov dword[i],2
    fidiv dword[i]
    fimul dword[X]
    fstp dword[X]

    mov dword[i],2   ; результат в А
    fld dword[i]
    fld dword[e]
    FYL2X 
    F2XM1              
    mov dword[i],1
    fadd dword[i]
    fstp dword[A]
    mov dword[i],8
    fld dword[i]
    mov dword[i],4
    fidiv dword[i]
    fimul dword[A]
    fstp dword[A]
    mov dword[i],2
    fld dword[i]
    mov dword[i],5
    fimul dword[i]
    fadd dword[A]
    fstp dword[A]
    
    mov dword[i],8   ;результат в вершине стека
    fld dword[i]        
    mov dword[i],3
    fidiv dword[i]
    mov dword[i],17
    fadd dword[i]
    fstp dword[i]
    fld dword[X]
    fimul dword[i]
    fidiv dword[A]
    
    ;fstp dword[X]
    ;PRINT_DEC 2,[X]
    ;NEWLINE
    xor eax, eax
    ret