ORG 100h

.DATA
	PROMPT_1 DB 'Input 0 or 1: ', '$'
	PROMPT_2 DB 0Dh, 0Ah, 'Print: ', '$'
	PROMPT_3 DB 0Dh, 0Ah, 'Rest $'

.CODE

MAIN PROC
	
	MOV AH, 9
    LEA DX, PROMPT_1	; load and display the string PROMPT_1
    INT 21H
	
	MOV AH, 1
	INT 21H
	MOV BL, AL	
	
	CMP BL, 49  ; It means (BL - 97)
	JNZ PRINT
	JL REST

PRINT:
	mov cx, 128 
    MOV DL, 0
        
    start:  
        
        MOV AH, 2
        INT 21H
        INC DL
        
        loop start
        
	JMP Exit
	
REST:
	MOV AH, 9
    LEA DX, PROMPT_3
    INT 21H
    
Exit:
	MOV AH, 4CH
	INT 21H
	
	MAIN ENDP
END MAIN
RET