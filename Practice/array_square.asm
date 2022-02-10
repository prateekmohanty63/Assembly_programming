ASSUME CS:CODE ,DS:DATA

DATA SEGMENT
    
      ARR1 DB 01H,02H,03H,04H,05H,06H,07H,08H
      TOT  DW ?

DATA ENDS

CODE SEGMENT

      START:
            MOV AX,DATA
            MOV DS,AX
            XOR AX,AX
            MOV CX,08H
            LEA SI,ARR1
            XOR DX,DX

      LOOP1:
            MOV AL,[SI]
            MUL AL
            ADD DX,AX
            INC SI
            DEC CX
            JNZ LOOP1
            MOV BL,0AH
            MOV AX,DX
      ;XOR DX,DX
            DIV BL

            HLT
CODE ENDS
END START 

     
