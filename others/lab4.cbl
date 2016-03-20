IDENTIFICATION DIVISION.
PROGRAM-id.   LABFOUR2.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT IN-FILE ASSIGN TO FILEIN.
    SELECT OUT-FILE ASSIGN TO FILEOUT.
DATA DIVISION.
FILE SECTION.
FD IN-FILE LABEL RECORD IS STANDARD.
01 IN-RECORD.
  02 I1 PIC 9(6).
  02 I2 PIC X(12).
  02 I3 PIC 99V99.
  02 I4 PIC 99V99.
  02 I5 PIC 99V99.
  02 I6 PIC X(50).
FD OUT-FILE LABEL RECORD IS STANDARD.
01 OUT-RECORD.
  02 O1 PIC 9(6).
  02 S1 PIC XX.
  02 O2 PIC X(12).
  02 S2 PIC XX.
  02 O3 PIC 99.99.
  02 S3 PIC XX.
  02 O4 PIC 99.99.
  02 S4 PIC XX.
  02 O5 PIC 99.99.
  02 S5 PIC XX.
  02 O6 PIC 99.99.
  02 O7 PIC X(32).
WORKING-STORAGE SECTION.
77 TEMP PIC 999V99.
77 TEMP1 PIC 99V99.
77 IDX1 PIC 9.
PROCEDURE DIVISION.
     OPEN INPUT IN-FILE.
     OPEN OUTPUT OUT-FILE.

     PERFPORM A VARYING IDX1 FROM 1 BY 1 UNTIL IDX>3.
     CLOSE IN-FILE.
     CLOSE OUT-FILE.
     STOP RUN.
A.READ INFILE AT END STOP RUN.
  MOVE I1 TO O1.
  MOVE I2 TO O2.
  MOVE I3 TO O3.
  MOVE I4 TO O4.
  MOVE I5 TO O5.
  ADD I3 , I4 , I5 GIVING TEMP.
  DIVIDE3 INTO TEMP GIVING TEMP1 ROUNDED.
  MOVE TEMP1 TO O6.
  WRITE OUT-RECORD.