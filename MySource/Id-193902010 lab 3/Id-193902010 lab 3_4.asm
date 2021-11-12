;Write an assembly language code to implement beep sound
ORG 0100H
.model small        ; it tell us that there is a code segment and a data segment
.stack 100h         ; memory size
.DATA

.CODE
MAIN PROC           
    
    MOV AH, 02H
    MOV DL, 07
    INT 21h
    
	
    MAIN ENDP
END MAIN
RET