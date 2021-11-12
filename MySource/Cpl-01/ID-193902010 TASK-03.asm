;F: °F = °C x 9/5 + 32 - 1
ORG 0100h

.DATA
CEL DW 10
FER DW ?

.CODE
MAIN PROC
    
    MOV AX, CEL
    
    MOV BL, 9
    XOR BH, BH
    MUL BX
    
    MOV BL, 5
    XOR BH, BH
    DIV BX
    
    ADD AX, 32
    SUB AX, 1
    MOV FER, AX
    
    
    MAIN ENDP
END MAIN
RET