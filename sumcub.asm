PROGRAMS
 1. Write an ALP to find the compare two strings  








ASSUME CS:CODE, DS:DATA
 DATA SEGMENT
 STR1 DB ‘CSE’
 L1 DB 03H
 STR2 DB ‘ECE’
 L2 DB 03H
 RES DB 0H
 DATA ENDS
 CODE SEGMENT
 START:
 MOV AX,DATA
 MOV DS,AX
 MOV ES,AX
 LEA DI,STR1
 LEA SI,STR2
 MOV CL,L2
 MOV DL, 0H
 CMP CL,L1
 JNZ EXIT
 REP CMPSB
 JNZ EXIT
 MOV DL,01H
 EXIT:
 MOV RES,DL
 INT 03H
 CODE ENDS
 END START
 
 
 
 
 
 
 
 
 
 
 
 
 
 Result
 Registers
 Data Segment
 Extra Segment
 1
2. Write an ALP to find the Length of a given string 








ASSUME CS:CODE, DS:DATA
 DATA SEGMENT
 STR1 DB ‘CSEBATCH’,0
 LEN DW 0H
 DATA ENDS
 CODE SEGMENT
 START:
 MOV AX,DATA
 MOV DS,AX
 MOV ES,AX,
 MOV AX,0H
 LEA DI,STR1
 REPNE SCASB
 DEC DI
 MOV LEN,DI
 INT 03H
 CODE ENDS
 END START
 
 
 
 
 
 
 
 
 
 
 
 
 
 Result
 Data Segment
 Extra Segment
 2
3. Write an ALP to find whether the given byte is in the string or not  








ASSUME CS:CODE, DS:DATA
 DATA SEGMENT
 STR1 DB ‘CSE’
 L1 DB 03H
 STR2 DB ’E’
 RES DB 0H
 DATA ENDS
 CODE SEGMENT
 START:
 MOV AX, DATA
 MOV DS, AX
 MOV ES,AX
 MOV DL,0H
 LEA DI,STR1
 MOV AL,STR2
 MOV CL,L1
 CLD
 REPNE SCASB
 JNZ EXIT
 MOV DL,01H
 EXIT:
 MOV RES,DL
 INT 03H
 CODE ENDS
 END START
 
 
 
 
 
 
 
 
 
 
 
 
 
 Result
 Registers
 Data Segment
 Extra Segment
 3