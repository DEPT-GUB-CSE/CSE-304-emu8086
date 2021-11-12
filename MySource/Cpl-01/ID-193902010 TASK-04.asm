;Write an assembly language program that inputs a single letter in lowercase and shows the next 3 letters in the uppercase in new lines.
ORG 0100H
.model small        ; it tell us that there is a code segment and a data segment
.stack 100h         ; memory size
.DATA

.CODE
MAIN PROC           ; procedure 
    MOV AX, @data   ; data segment initialization
    MOV DS, AX
            
    MOV AH, 01h	    ; input key function
    INT 21h		    ; ASCII code in AL    
    MOV BL, AL      ; Moving input to BL 
    
    MOV AH, 02H     ;NEW LINE
    MOV DL, 10
    INT 21h
    MOV DL, 13
    INT 21h  
   
	MOV AH, 02h 	; display character function
    MOV DL, BL		; Moving BL to DL
    INT 21h 		; display character 

	      
	MOV AH, 4ch     ; to exit DOS
	INT 21h
	
    MAIN ENDP
END MAIN
RET