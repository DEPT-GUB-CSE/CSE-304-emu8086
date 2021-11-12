;(30 + 15) * (575 - 225) + 210
ORG 0100h

.DATA
OUTPUT DW ?

.CODE
MAIN PROC
    XOR AX, AX
    MOV AL, 30
    ADD AX, 15
    
    MOV BX, 575
    SUB BX, 225
    
    MUL BX
    
    ADD AX, 210
    
    MOV OUTPUT, AX
    MAIN ENDP
END MAIN
RET