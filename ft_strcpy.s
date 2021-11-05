global _ft_strcpy

section .text
_ft_strcpy:
    mov rax, 0					; rdi=dest, rsi = src

retry:
    mov cl, byte[rsi + rax]		; tmp = src[i]
    cmp cl, 0					; if dst[i] = 0
    je end
    mov byte [rdi + rax], cl	; src[i] = tmp
    inc rax						; ecx++
    jmp retry

end:
    mov byte[rdi + rax], 0		; src[i] = 0
    mov rax, rdi
    ret
