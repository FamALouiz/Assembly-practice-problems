; Write a program to (a) prompt the user, (b) read first, middle, and
; last initials of a person's name, and (c) display them duwn the
; left margin.
ORG 100H

.data   
    newLine DB 0DH, 0AH, '$'
    msg1 DB "Enter 3 initials$"
    letters DB 3 DUP(?)
    currentLetter DB ?, '$'


.code

    MOV DX, OFFSET msg1
    MOV AH, 9
    INT 21H 

    MOV DX, OFFSET newLine 
    INT 21H 

    MOV AH, 1
    INT 21H 
    MOV BL, AL

    MOV AH, 1
    INT 21H 
    MOV CL, AL

    MOV AH, 1
    INT 21H 
    MOV CH, AL

    MOV DX, OFFSET newLine 
    MOV AH, 9
    INT 21H

    MOV currentLetter[0], BL 
    MOV DX, OFFSET currentLetter
    MOV AH, 9
    INT 21H

    MOV DX, OFFSET newLine 
    MOV AH, 9
    INT 21H

    MOV currentLetter[0], CL
    MOV DX, OFFSET currentLetter
    INT 21H

    MOV DX, OFFSET newLine 
    MOV AH, 9
    INT 21H

    MOV currentLetter[0], CH
    MOV DX, OFFSET currentLetter
    INT 21H

    MOV DX, OFFSET newLine 
    MOV AH, 9
    INT 21H