; The boot sector of the disk
; Based on (https://www.youtube.com/watch?v=Y0-oWfcXGGY)

; There are four general purpose registers available:
;
;   ===============================
;   |               |__AH__|__AL__|		2 lower bytes accessible as AH and AL
;   |               |_____AX______|		2 lower bytes accessible as AX
;   |_____________EAX_____________|		full register accessible as one single register EAX
;
;	- EAX which containd AX which contains both AH and AL
;	- EBX which containd BX which contains both BH and BL
;	- ECX which containd CX which contains both CH and CL
;	- EDX which containd DX which contains both DH and DL
;
; In Real Mode (in which we first boot in), only the lower 16bit part of the registers is accessible.
; So we can MOV data from/to AH, AL and AX, but no from/to EAX.

mov ah,0x0e
mov al,'H'
int 0x10

mov ah,0x0e
mov al,'I'
int 0x10


; BIOS interrupt calls can be used on Real Mode (16 bit).
; Interrupts use the INT mnemonic.
; Calling interrupt 0x10 (16d) with 0x0e on AH tells the BIOS to print the content of AL.



jmp $

times 510 -($-$$) db 0

dw 0xaa55
