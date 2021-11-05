global _ft_strdup
extern _ft_strlen
extern _ft_strcpy
extern _malloc

section .text
_ft_strdup:
    push rdi             ; save first argument
    call _ft_strlen
    inc rax             ; +1 for \O
    mov rdi, rax        ; first argument is bytes to allocate
    call _malloc
    pop rdi             ; first argument is now string
    mov rsi, rdi        ; second argument is the same string as the first
    mov rdi, rax        ; the first argument is a pointer where begin the allocate string
    call _ft_strcpy      ; copy rdi in new allocated string
    ret
