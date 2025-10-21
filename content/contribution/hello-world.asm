section .data
    msg db "Hello, world!", 0x0A ; Our string with a newline character

section .text
    global _start

_start:
    ; Write "Hello, world!" to stdout
    mov rax, 1             ; System call for sys_write (1)
    mov rdi, 1             ; File descriptor for stdout (1)
    lea rsi, [msg]         ; Address of our string
    mov rdx, 14            ; Length of the string (including newline)
    syscall

    ; Exit the program
    mov rax, 60            ; System call for sys_exit (60)
    mov rdi, 0             ; Exit code 0 (success)
    syscall