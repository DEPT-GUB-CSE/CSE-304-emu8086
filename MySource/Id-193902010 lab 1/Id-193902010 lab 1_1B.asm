;0Bh * (200 - 225) + 127
ORG 0100h

.DATA
OUTPUT DW ?

.CODE
MAIN PROC
    XOR AX, AX
    MOV AL, 0Bh
    
    MOV BX, 200
    SUB BX, 225
    
    MUL BX
    
    ADD AX, 127
    
    MOV OUTPUT, AX
    MAIN ENDP
END MAIN
RET