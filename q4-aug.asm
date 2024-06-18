; Write a program to display an n x n solid box of asterisks.
; Hint: declare a string in the data segment that specifies the box,
; and display it with INT 2lh, function 9h.

; Example: 
; Input n: 3
; ***
; ***
; ***

ORG 100H

.data 
    newLine DB 0DH, 0AH, '$'
    asterisks DB "*$"
    msg DB "Input n from 0-9: $"
.code 

    MOV DX, OFFSET msg
    MOV AH, 9
    INT 21H

    MOV AH, 1 
    INT 21H
    MOV BL, AL 

    MOV DX, OFFSET newLine 
    MOV AH, 9 
    INT 21H 

    SUB BL, 48D
    XOR BH, BH 

    MOV CX, BX

    LOOP_OUTER: 
        PUSH CX
        MOV CX, BX
        LOOP_INNER: 
            MOV DX, OFFSET asterisks
            MOV AH, 9
            INT 21H
            LOOP LOOP_INNER
        
        MOV DX, OFFSET newLine 
        MOV AH, 9 
        INT 21H 
        POP CX
        LOOP LOOP_OUTER