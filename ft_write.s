extern  ___error ; errno_location
global _ft_write

section .text
_ft_write:
	mov rax,	0x02000004	; sys_write, 0x02000004 = adress write
    	syscall				; call write
    	jc error
    	ret
error:
 	mov rdi, rax
	push rax				;
 	call  ___error
	pop qword[rax]			; qword = write in first 4 bytes in rax
    mov rax, -1
    ret