; M7: Display string & update cursor

section .text
    global _start

_start:
    ; Not typical for Linux, but a simple simulation
    ; Using ANSI escape codes to move cursor
    mov eax, 4       ; System call number for sys_write
    mov ebx, 1       ; File descriptor 1 is stdout
    mov ecx, msg7    ; Pointer to the string with cursor movement
    mov edx, 13      ; Length of the string
    int 0x80         ; Call kernel

    ; Exit the program
    mov eax, 1       ; System call number for sys_exit
    xor ebx, ebx     ; Exit code 0
    int 0x80         ; Call kernel

section .data
    msg7 db 'Line 1', 0
          db '\033[5;15HLine 2', 0 ; Move cursor to line 5, column 15
