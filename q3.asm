; Write· a program to read one of the hex digits A-F, and display it
; on the next line in decimal.

ORG 100H

.data
    newLine DB 0DH, 0AH, '$'
    msg1 DB "Enter a HEX number: $" 
    hexNumbers DB 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
    printNumber DB '1', '$'
    
.code   
    
    MOV DX, OFFSET msg1 
    MOV AH, 9 
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    SUB BX, 11H

    MOV DX, OFFSET newLine 
    MOV AH, 9
    INT 21H 

    CALL ToBin

    MOV DX, OFFSET newLine
    MOV AH, 9 
    Int 21H
    HLT 



    ToBin PROC
        MOV DX, OFFSET printNumber
        MOV AH, 9
        INT 21H
        MOV printNumber[0], BL 
        MOV DX, OFFSET printNumber 
        MOV AH, 9
        INT 21H

        RET
    ToBin ENDP
    

