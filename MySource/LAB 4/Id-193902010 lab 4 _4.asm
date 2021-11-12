; Write an assembly language program that inputs a single letter and shows the next 5 (five) letters in the opposite case of input 

ORG 0100H

.DATA
    N DW 5
	PROMPT_1 DB 'Enter a character: ', '$'
	PROMPT_2 DB 0Dh, 0Ah, 'toLowerCase / toUpperCase of this character: ', '$'
	
.CODE

MAIN PROC
	
	
	MOV CX, N
	
	MOV AH, 9
    LEA DX, PROMPT_1	; load and display the string PROMPT_1
    INT 21H
	
	MOV AH, 1
	INT 21H
	MOV BL, AL

	MOV AH, 9
    LEA DX, PROMPT_2	; load and display the string PROMPT_1
    INT 21H
	
	
	
	CMP BL, 97  ; It means (BL - 97)
	JGE toUpperCase
	JL toLowerCase

toUpperCase:
	SUB BL, 32
	
	MOV DL, BL
	
	JMP Exit

toLowerCase:
	ADD BL, 32
	MOV DL, BL

	JMP Exit  
	
Exit:
    INC DL
    MOV AH, 2
    INT 21H
        
    loop Exit
    
	MOV AH, 4CH
	INT 21H
	
	MAIN ENDP
END MAIN
RET