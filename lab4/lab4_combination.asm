DATA SEGMENT
   N    EQU 0005H
   R    EQU 0002H
DATA ENDS

CODE SEGMENT
         ASSUME DS:DATA ,CS:CODE

   START:
         MOV    AX,N
         MOV    BX,R
         SUB    AX,BX
         MOV    BX,AX

         MOV    AX,0001H

   LOOP1:
         MUL    BX
         DEC    BX
         JNZ    LOOP1
         MOV    CX,AX

         MOV    AX,0001H
         MOV    BX,N

   LOOP2:
         MUL    BX
         DEC    BX
         JNZ    LOOP2
         DIV    CX
         MOV    CX,AX

         MOV    AX,0001H
         MOV    BX,R

   LOOP3:
         MUL    BX
         DEC    BX
         JNZ    LOOP3
         MOV    BX,AX
         MOV    AX,CX
         DIV    BX
   

         HLT
CODE ENDS
END START
   