CODE3 SEGMENT PARA PUBLIC 'CODE'
PUBLIC clearScreen
MOUSE PROC FAR; mouse for the matrix screen
ASSUME CS:CODE2
	;MOUSE PROC NEAR; mouse for the matrix screen
	MOV AX, 0001H; SHOW MOUSE POINTER
	INT 33H;
	Next:
	mov ax, 3   ;GET CURSOR POSITION IN CX,DX
	int 33h
	MOV AX,02H; HIDE CURSOR
	INT 33H;
	call putpix ;CALL PROCEDURE THAT PUTS A PIXEL
	jmp Next;
	mov ah,4ch; RETURN CODE. PROCESS TERMINATED
	int 21h
MOUSE ENDP
CODE3 ENDS
END;