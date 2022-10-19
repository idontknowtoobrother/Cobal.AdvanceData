       IDENTIFICATION DIVISION.
       PROGRAM-ID. REDEFINES2.
       AUTHOR. 62160246.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PERCENTTOAPPLY  PIC 9(3).
       01 PERCENTAGE REDEFINES PERCENTTOAPPLY
                          PIC 9V99.
       01 BASEAMOUNT      PIC 9(5)      VALUE 10555.
       01 PERCENTOFBASE   PIC ZZ,ZZ9.99.
       01 PRNPERCENT      PIC ZZ9.

       PROCEDURE DIVISION.
       BEGIN.
           MOVE 23 TO PERCENTTOAPPLY
           COMPUTE PERCENTOFBASE = BASEAMOUNT * PERCENTAGE
           DISPLAY "23% of 10555 is = " PERCENTOFBASE
           MOVE PERCENTTOAPPLY TO PRNPERCENT
           DISPLAY "PERCENTAGE applied was " PRNPERCENT "%"
           STOP RUN.