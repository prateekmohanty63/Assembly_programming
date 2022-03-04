DATA SEGMENT
       NUM     EQU 3H
       NUM1    EQU 02H
       STRING1 DB  "EVEN"
       STRING  DB  "ODD"
    
DATA ENDS

CODE SEGMENT
              ASSUME CS:CODE,DS:DATA

       START: 
              MOV    AX,DATA
              MOV    DS,AX

              XOR    AX,AX
              XOR    CX,CX
              XOR    BX,BX

              MOV    AX,NUM
              MOV    CX,8
              MOV    BX,0

       LOOP1: 
              ROR    AX,1
              JC     LABEL1
              JMP    LABEL2
  

       LABEL1:
              INC    BX

       LABEL2:
              DEC    CX
              JNZ    LOOP1

              MOV    CX,BX
              mov    AX,BX
              MOV    BL,NUM1
              DIV    BL
              CMP    AH,00H
              JNZ    ODD
              LEA    DX,STRING1
              JMP    LABEL3
       ODD:   
              LEA    DX,STRING
              JMP    LABEL3

       
              
       LABEL3:MOV    AH,09H
              INT    21H
              MOV    AH,4CH
              INT    21H


              HLT
CODE ENDS
END START

   