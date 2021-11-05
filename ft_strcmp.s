global _ft_strcmp

section .text
_ft_strcmp:
    mov rax, 0
retry:
    mov cl, byte [rsi + rax] 
    mov bl, byte [rdi + rax]    ; save char in 8 bits registers
    cmp bl, 0
    je end
    cmp cl, 0
    je end                      ; if the two strings are not at the end (\0)
    cmp cl, bl                  ; if s1[i] != s2[i] go to end label
    jne end
    inc rax
    jmp retry                   ; else go at retry label
end:
    movzx rax, bl
    movzx r10, cl               ; assign char to compare at 64 bits register to got it and rax
    sub	rax, r10	            ; substract ASCII chars
    ret
