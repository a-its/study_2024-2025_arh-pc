; lab5.asm
SECTION .data
	lab5: DB 'Andrei Itskov' ,10
	
	lab5Len: EQU $-lab5
	
SECTION .text
	GLOBAL _start
_start:
	mov eax,4
	mov ebx,1
	mov ecx,lab5
	mov edx,lab5Len
	int 80h
	
	mov eax,1
	mov ebx,0
	int 80h
