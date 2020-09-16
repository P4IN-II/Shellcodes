; HELLO WORLD IN ASSEMBLY
; Author : P4IN

global _start
section .text
_start:
	xor eax,eax
	mov al,0x4
	xor ebx,ebx
	mov bl,0x1
	xor edx,edx
	push edx
	push 0x0a646c72
	push 0x6f77206f
	push 0x6c6c6568
	mov ecx,esp
	mov dl,12
	int 0x80

	;exit the program
	xor eax,eax
	mov al,0x1
	xor ebx,ebx
	mov bl,0x5
	int 0x80
