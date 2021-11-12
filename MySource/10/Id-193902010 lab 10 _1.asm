TITLE   8086 Code Template (for EXE file)

;       AUTHOR          emu8086
;       DATE            ?
;       VERSION         1.00
;       FILE            ?.ASM

; 8086 Code Template

; Directive to make EXE output:
       #MAKE_EXE#

DSEG    SEGMENT 'DATA'

Dots	DB	00000110b, 01001001b, 01001001b, 01001001b, 00111110b  ; 9
	DB	00000000b, 01001001b, 01001001b, 01001001b, 00111110b  ;3
	DB	00000110b, 01001001b, 01001001b, 01001001b, 00111110b  ;9
	DB	00111110b, 01000001b, 01000001b, 01000001b, 00111110b  ;0
	DB	00110000b, 01001001b, 01001001b, 01001001b, 00000110b  ;2
	DB	00111110b, 01000001b, 01000001b, 01000001b, 00111110b  ;0
	DB	00000000b, 00000010b, 01111111b, 00000000b, 00000000b  ;1
    DB	00111110b, 01000001b, 01000001b, 01000001b, 00111110b  ;0
    
DSEG    ENDS

SSEG    SEGMENT STACK   'STACK'
        DW      100h    DUP(?)
SSEG    ENDS

CSEG    SEGMENT 'CODE'

;*******************************************

START   PROC    FAR

; Store return address to OS:
    PUSH    DS
    MOV     AX, 0
    PUSH    AX

; set segment registers:
	MOV     AX, DSEG
    	MOV     DS, AX
    	MOV     ES, AX


	MOV DX,2000h	; first DOT MATRIX digit
	MOV BX, 0

MAINLOOP:
	MOV SI, 0
	MOV CX, 5

NEXT:
	MOV AL,Dots[BX][SI]
	out dx,al
	INC SI
	INC DX

	CMP SI, 5
	LOOPNE NEXT

	ADD BX, 5
	CMP BX, 40
	JL MAINLOOP

; return to operating system:
    RET
START   ENDP

;*******************************************

CSEG    ENDS 

        END    START    ; set entry point.