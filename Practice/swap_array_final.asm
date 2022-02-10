DATA SEGMENT
      arr1 DW 3H,5H,7H,4H,1H
DATA ENDS

CODE SEGMENT
            ASSUME CS:CODE,DS:DATA

      START:
            MOV    AX,DATA
            MOV    DS,AX
            MOV    CX,02H
            LEA    SI,arr1
            LEA    DI,arr1+05H
            MOV    BP,00H

      LOOP1:
            MOV    AX,[SI]
            MOV    BX,[DI]
            XCHG   [SI],BX
            XCHG   [DI],AX
            INC    SI
            INC    SI
            INC    BP
            DEC    CX
            JNZ    LOOP1
            HLT
CODE ENDS
END START


