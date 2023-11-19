;M2: Write character

section .data
    msg2 db '2', 0

section .text
    global _start

_start:
    mov eax, 4       ; System call number for sys_write
    mov ebx, 1       ; File descriptor 1 is stdout
    mov ecx, msg2    ; Pointer to the character
    mov edx, 1       ; Length of the character
    int 0x80         ; Call kernel

    ; Exit the program
    mov eax, 1       ; System call number for sys_exit
    xor ebx, ebx     ; Exit code 0
    int 0x80         ; Call kernel
