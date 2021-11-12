;°C = (°F - 32) x 5/9 + 1
ORG 0100h

.DATA
FER DW 999
CEL DW ?

.CODE
MAIN PROC
    
    MOV AX, FER
    SUB AX, 32
    
    MOV BL, 5
    XOR BH, BH
    MUL BX
    
    MOV BL, 9
    XOR BH, BH
    DIV BX
    
    ADD AX, 1
    
    MOV CEL, AX
    
    
    MAIN ENDP
END MAIN
RET