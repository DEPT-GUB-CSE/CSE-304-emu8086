;Calculate the square of any number

ORG 0100h

.DATA
OUTPUT DW ?

.CODE
MAIN PROC
    XOR AX, AX
    MOV AL, 13
    XOR BX, BX
    MOV BX, AX
    
    MUL BX
    
    
    MOV OUTPUT, AX
    MAIN ENDP
END MAIN
RET