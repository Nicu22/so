; Method  1 
go:
mov AH, 0Eh     ; AH = 0Eh (BIOS function for Teletype Output)
; Set up AL egister with the ASCII code of the character to be printed
mov AL, "E"
int 10h         ;print