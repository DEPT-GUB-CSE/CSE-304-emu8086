; Write an assembly language program that can calculate the area of a circle. You can take pie as 3. Take the radius of the circle (0 to 9)as input and store the output in a variable.

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
    
    SUB AL, 48      ; convert ch to number
    XOR AH, AH
    
    MUL AL          ;R^2
    
    MOV BL, 3       ;PI
    MUL BL          ;PI*R^2
    
    ADD OUTPUT, AX

	
    MAIN ENDP
END MAIN
RET