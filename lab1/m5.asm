; M5: Display character + attribute & update cursor

section .text
    global _start

_start:
    ; Not typical for Linux, but a simple simulation
    ; Using ANSI escape codes to change text color and move cursor
    mov eax, 4       ; System call number for sys_write
    mov ebx, 1       ; File descriptor 1 is stdout
    mov ecx, msg5    ; Pointer to the string with attribute and cursor movement
    mov edx, 19      ; Length of the string
    int 0x80         ; Call kernel

    ; Exit the program
    mov eax, 1       ; System call number for sys_exit
    xor ebx, ebx     ; Exit code 0
    int 0x80         ; Call kernel

section .data
    msg5 db 'Line 1\033[31;40mRed\033[0mLine 2', 0 ; Red text with black background
