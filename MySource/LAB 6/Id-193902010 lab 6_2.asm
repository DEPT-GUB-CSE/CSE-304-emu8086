
.MODEL SMALL
.STACK 100H
.DATA

   PROMPT_2 DB 0Dh, 0Ah, 'Smallest number = ', '$'
	
ARRAY DB  8,5,6,5,7,9  

;SMALLEST DB ? 

.CODE     

MAIN PROC 
    

mov ax,@data

mov ds,ax


mov si,offset ARRAY 

mov cx,5

mov bl,[si]

loopx:

cmp [si],bl

jle update
resume:
inc si
loop loopx  

 	MOV AH, 9
	LEA DX, PROMPT_2
	INT 21H   
	
	
add bl,48
mov dl,bl
mov ah,02h
int 21h

update:

mov bl,[si]

jmp resume
   main endp

end main