;FFFh * 10h + 1111b

ORG 0100h

.DATA
OUTPUT DW ?

.CODE
MAIN PROC
    XOR AX, AX
    MOV AX, 0FFFh
    MOV BX, 10h
    MUL BX
    
    ADD AX, 1111b
    
    MOV OUTPUT, AX
    MAIN ENDP
END MAIN
RET