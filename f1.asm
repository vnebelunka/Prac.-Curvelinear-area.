;f1 = e^x + 2
section .text
global f1
f1:
    push ebp
    mov ebp, esp
    finit   
    fld qword[ebp + 8]
    fldl2e
    fmulp
    frndint
    fld1
    fscale
    fld qword[ebp + 8]
    fldl2e
    fmulp
    fld qword[ebp + 8]
    fldl2e
    fmulp
    frndint
    fsubp
    f2xm1
    fld1
    fadd
    fmul
    fld1
    fadd
    fld1
    faddp
    leave
    ret