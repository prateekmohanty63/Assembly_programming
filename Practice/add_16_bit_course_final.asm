DATA SEGMENT              ; Here data is just name we have given , assembler doesnt know weather it is code or data segment
      A     DW 9384H      ; DW THIS IS A 16 bit variable
      B     DW 1845H
      SUM   DW ?
      CARRY DB 00H        ; question mark means that the variable is declared but not initilized
      ; question mark means that the variable is declared but not initilized
DATA ENDS
CODE SEGMENT                             ;Here data is just name we have given , assembler doesnt know weather it is code or data segment

            ASSUME CS:CODE ,DS:DATA      ; Here we told the assembler that the DATA that we were taking about is data segment and the code we were taking about is code segment
 

      START:
            MOV    AX,DATA
            MOV    DS,AX

            MOV    AX,A
            ADD    AX,B
            JNC    SKIP
            INC    CARRY
      SKIP: MOV    SUM,AX

            HTL


    

CODE ENDS
END START     

; END THE CODE SEGMENT HERE
; TWO VERY IMPORTANT NOTES HERE
; WE CAN NEVER INITILIZE THE ADDRESS OF CODE SEGMENT
; START IS WHRER THE ASSEMBLER INITILIZES THE CODE SEGMENT