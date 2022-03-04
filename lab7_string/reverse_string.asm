DATA SEGMENT
      STRING1 DB  "PRATEEK$"
      STRING2 EQU "$"
      PAL     DB  00H

DATA ENDS

EXTRA SEGMENT

      ARR2  DB 07H DUP(?)

EXTRA ENDS

CODE SEGMENT
            ASSUME CS:CODE,DS:DATA,ES:EXTRA

      START:
            MOV    AX,DATA
            MOV    DS,AX
            MOV    AX,EXTRA
            MOV    ES,AX


            LEA    SI,STRING1
            MOV    BL,STRING2
            XOR    CX,CX

      LOOP1:
            MOV    AL,[SI]
            INC    CX
            INC    SI
            CMP    AL,BL
            JNZ    LOOP1
            DEC    CX
            DEC    CX

            LEA    SI,STRING1
            LEA    DI,ARR2
    
      LOOP2:
            INC    DI
            DEC    CX
            CMP    CX,00H
            JNZ    LOOP2
    

      LOOP3:
            CLD
            LODSB
            STD
            STOSB
            LOOP   LOOP3

            HLT
CODE ENDS
END START

