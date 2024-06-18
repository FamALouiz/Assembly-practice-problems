; Write a program to (a) display a "?", (b) read two decimal digits
; who.se sum "is less than 10, (c) display them and their sum on the
; next line, with an appropriate message.
ORG 100H

.data
    msg1 DB "?27$"
    msg2 DB "2 and 7 make 9$"
    newLine db 0Dh, 0Ah, '$' ;

.code SECTION 

    MOV DX, OFFSET msg1
    MOV AH, 9
    INT 21H
    MOV DX, OFFSET newLine
    INT 21H
    MOV DX, OFFSET msg2 
    INT 21H