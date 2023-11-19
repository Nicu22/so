; M6: Display string

section .data
    hello db 'Hello, Assembly!', 0

section .text
    global _start

_start:
    mov eax, 4       ; System call number for sys_write
    mov ebx, 1       ; File descriptor 1 is stdout
    mov ecx, hello   ; Pointer to the string
    mov edx, 16      ; Length of the string
    int 0x80         ; Call kernel

    ; Exit the program
    mov eax, 1       ; System call number for sys_exit
    xor ebx, ebx     ; Exit code 0
    int 0x80         ; Call kernel
