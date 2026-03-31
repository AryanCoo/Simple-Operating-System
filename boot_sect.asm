[BITS 16]
[ORG 0x7C00]

;
; A simple boot sector program that prints "Hello"
;

mov ah, 0x0e    ; BIOS function: print character in teletype mode

mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $           ; Infinite loop

times 510 - ($ - $$) db 0   ; Pad to 510 bytes

dw 0xaa55       ; Boot sector magic number