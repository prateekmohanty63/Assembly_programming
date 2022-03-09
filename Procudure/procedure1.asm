CODE SEGMENT
    ASSUME CS:CODE
    START:
       MOV AX,1
       CALL PRCO1
       MOV AX,2
       RET
    ;description
    PRCO1 PROC
        MOV BX,5
        RET
    PRCO1 ENDP
   CODE ENDS
   END START