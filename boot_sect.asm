;
; A simple boot sector program that loops forever.
;

mov ah 0x0e ;

mov al 'H'
int 0x0e
mov al 'e'
int 0x0e
mov al 'l'
int 0x0e
mov al 'l'
int 0x0e
mov al 'o'
int 0x0e

jmp $ ;

times 510 -( $ - $$ ) db 0 ;

dw 0xaa55 ;