; Write an assembly language code to print A to Z using Loop

org 100h
 
.DATA    
N dw 26
  

.CODE   
    MAIN PROC
        mov ax, @DATA
        mov ds, ax

        xor bx, bx 
        mov cx, N 
        MOV DL, 65
        
    start:  
        
        MOV AH, 2
        INT 21H
        INC DL
        
        loop start
        
        
        mov ah, 4ch
        int 21h

MAIN ENDP
END MAIN
RET