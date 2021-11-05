global _ft_strcpy

section .text
_ft_strcpy:
    mov rax, 0					; rdi = dest, rsi = src

retry:
    mov cl, byte[rsi + rax]		; tmp = src[i]
    cmp cl, 0					; if src[i] = 0
    je end
    mov byte [rdi + rax], cl	; dest[i] = tmp
    inc rax						; ecx++
    jmp retry

end:
    mov byte[rdi + rax], 0		; dest[i] = 0
    mov rax, rdi
    ret
