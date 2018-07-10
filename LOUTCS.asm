CODE2 SEGMENT PARA PUBLIC 'CODE'
PUBLIC clearScreen
clearScreen PROC FAR
ASSUME CS:CODE2
	MOV AL,0 ; AL gets the color value
	MOV BX,0A000H ;
	MOV ES,BX ; ES set to start of VGA
	MOV BX,0 ; BX set to pixel offset 0
	MOV CX,64000 ; CX set to number of pixels
	;
	ClrLoop: ; Repeat
	MOV [ES:BX],AL ; Memory[ES:BX] := Color
	INC BX ; BX := BX + 1
	LOOP ClrLoop ; CX := CX – 1
	RETF
clearScreen ENDP
CODE2 ENDS
END;