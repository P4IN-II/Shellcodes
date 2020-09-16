; HELLO WORLD IN ASSEMBLY
; Author : P4IN

global _start
section .text
_start:
	jmp getaddress

printhello:
	xor eax,eax
	mov al,0x4
	xor ebx,ebx
	mov bl,0x1
	pop ecx
	xor edx,edx
	mov dl,13
	int 0x80

	;exit the program
	xor eax,eax
	mov al,0x1
	xor ebx,ebx
	mov bl,0x5
	int 0x80

getaddress:
	call printhello
	message: db "Hello World!",0xA

