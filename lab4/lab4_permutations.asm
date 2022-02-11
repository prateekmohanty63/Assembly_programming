DATA SEGMENT
      N    DB 5
      R    DB 2
DATA ENDS

CODE SEGMENT
            ASSUME CS:CODE ,DS:DATA
      START:
            MOV    CX, 05H
            MOV    AX, 01H
            MOV    BX,AX
      
      LOOP1:
            INC    BX
            MUL    BX
            CMP    BX,CX
            JNZ    LOOP1                 ;Value of 5 factorial
    
      var1: dd     AX

            MOV    CX,02
            MOV    AX,01H
            MOV    BX,AX

      LOOP2:
            INC    BX
            MUL    BX
            CMP    BX,CX
            JNZ    LOOP2
      var2: dd     AX                    ; value of 2 factorial

            SUB    N ,R

            MOV    CX, N
            MOV    AX, 01H
            MOV    BX,AX

      LOOP3:
            INC    BX
            MUL    BX
            CMP    BX,CX
            JNZ    LOOP3
    
      var3: dd     AX                    ; value of 2 factorial

            MOV    AX,var1
            DIV    AX,var2
            DIV    AX,var3

            HLT
CODE ENDS
CODE ENDS
END   

