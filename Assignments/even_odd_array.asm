DATA SEGMENT
      arr1  DB 1H,2H,3H,4H,5H,6H,7H,8H
      EVEN1 DB 4 DUP(?)
      ODD1  DB 4 DUP(?)
DATA ENDS

CODE SEGMENT
            ASSUME CS:CODE,DS:DATA

      START:
            MOV    AX,DATA
            MOV    DS,AX
            LEA    SI,arr1
            XOR    AX,AX
            XOR    BX,BX                ; EVEN
            XOR    DX,DX                ; ODD
            MOV    CX,08H

      LOOP1:
            MOV    AL,[SI]
            AND    AL,01H
            JZ     EVEN1
            INC    DX
            INC    SI
            LOOP   LOOP1
      
      EVEN1:
            INC    BX
            INC    SI
            LOOP   LOOP1


            HLT
CODE ENDS
END START

