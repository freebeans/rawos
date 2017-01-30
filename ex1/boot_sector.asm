; The boot sector of the disk
; Based on (https://www.youtube.com/watch?v=Y0-oWfcXGGY)

; JMP jumps the program to the location given by the first operand.
; '$' means "the current position", so 'jmp $' means "jump to this same position".
; This means 'JMP $' produces an infinite loop. 

jmp $

; The TIMES prefix causes the instruction to be assembled multiple times.
; DB, DW, DD, DQ, DT, DO, DY and DZ are used to declare initialized data in the output file.


; This would generate ten zeroes.
;
;	times 10 db 0


; This would generate the string 'abcdefg' 5 times.
;
;	times 5 db 'abcdefg'


; This would generate the same as above, plus a zero byte after each string.
;
;	times 5 dw 'abcdefg'
;
; db writes one byte and dw writes one word (2 bytes). Thus the extra zero.

; As explained above, '$' means "right here".
; '$$' means "the beginning of the section".
; So '($-$$)' is an expression that evaluates to how far into the section is this.

; The expression '510 - ($-$$)' means TIMES will repeat for "510 minus the current position into this section".
; The expression ensures there will be a maximum 510 zeroes before the magic number.
; If there's any code before this mnemonic, the expression will be evaluated in
; order to keep the section length at 512 bytes.

; "Why not use 'times ($) db 0' then?"
; In this example, the expression needs to be related to the start of the section.
; Also, take a look at:
;
;		http://www.nasm.us/doc/nasmdoc3.html#section-3.8

times 510 -($-$$) db 0

dw 0xaa55
