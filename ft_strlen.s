global _ft_strlen

section     .text
_ft_strlen:
    mov rax, 0              ;   i = 0

loop:
    cmp byte[rdi + rax], 0  ;   if s[i] == 0
    je end
    inc rax                 ;   i++
    jmp loop

end:
    ret                     ;   return i
