;Write an assembly language program that can calculate the average of 3 numbers (0 to 9). Take 3 numbers from input and store the average in a variable.

ORG 0100H
.model small        ; it tell us that there is a code segment and a data segment
.stack 100h         ; memory size
.DATA
SUM DW ?
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
    MOV CL, BL
    XOR CH, CH
    
    
    MOV AH, 01h	    ;2ND
    Int 21h		       
    MOV BL, AL       
    SUB BL, 48
     XOR BH, BH
    ADD CL, BL
    
   
    
    MOV AH, 01h	    ;3RD
    Int 21h		       
    MOV BL, AL      
    SUB BL, 48
     XOR BH, BH
    ADD CL, BL
    XOR CH, CH
    
    MOV SUM, CX
    
    MOV AL, CL
    MOV BL, 03
    DIV BX
    MOV OUTPUT, AX
	
    MAIN ENDP
END MAIN
RET