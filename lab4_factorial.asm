
CODE SEGMENT
            ASSUME CS:CODE

      START:
            MOV    CX, 05H
            MOV    AX, 01H
            MOV    BX,AX
      LOOP1:
            INC    BX
            MUL    BX
            CMP    BX,CX
            JNZ    LOOP1

            HLT
CODE ENDS
END