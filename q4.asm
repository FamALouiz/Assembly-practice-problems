; Write a program to display a 10 x 10 solid box of asterisks.
; Hint: declare a string in the data segment that specifies the box,
; and display it with INT 2lh, function 9h.

ORG 100H

.data 
    newLine DB 0DH, 0AH, '$'
    line DB "**********$"

.code 
    
    MOV CX, 10
    MOV AH, 9 
    LOOP: 
        MOV DX, OFFSET line 
        INT 21H

        MOV DX, OFFSET newLine 
        INT 21H

        LOOP LOOP