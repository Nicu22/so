; M3: Write character/attribute

section .text
    global _start

_start:
    ; Not applicable for Linux, but a simple simulation
    ; Using ANSI escape codes to change text color
    mov eax, 4       ; System call number for sys_write
    mov ebx, 1       ; File descriptor 1 is stdout
    mov ecx, msg3    ; Pointer to the character with attribute
    mov edx, 5       ; Length of the string
    int 0x80         ; Call kernel

    ; Exit the program
    mov eax, 1       ; System call number for sys_exit
    xor ebx, ebx     ; Exit code 0
    int 0x80         ; Call kernel

section .data
    msg3 db '\033[31mR\033[0m', 0 ; Red character
