;Write an assembly language code that will take 3 numbers(0 to 9) from the user and store the sum in a variable.  

ORG 0100H
.model small        ; it tell us that there is a code segment and a data segment
.stack 100h         ; memory size
.DATA
OUTPUT DW ?
.CODE
MAIN PROC           ; procedure 
    MOV AX, @data   ; data segment initialization
    MOV DS, AX
            
    MOV AH, 01h	    ; input key function
    Int 21h		    ; ASCII code in AL    
    MOV BL, AL      ; Moving input to BL
    SUB BL, 48      ; convert ch to number
    XOR BH, BH
    MOV OUTPUT, BX
    
    
    MOV AH, 01h	    ;2ND
    Int 21h		       
    MOV BL, AL       
    SUB BL, 48
     XOR BH, BH
    ADD OUTPUT, BX
    
   
    
    MOV AH, 01h	    ;3RD
    Int 21h		       
    MOV BL, AL      
    SUB BL, 48
     XOR BH, BH
    ADD OUTPUT, BX

	
    MAIN ENDP
END MAIN
RET