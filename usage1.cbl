       IDENTIFICATION DIVISION.
       PROGRAM-ID. REDEFINES3.
       AUTHOR. 62160246.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1  PIC 9 VALUE 4 USAGE IS DISPLAY.
       01 NUM2  PIC 9 VALUE 1 USAGE IS DISPLAY.
       01 NUM3  PIC 9 VALUE ZERO USAGE IS DISPLAY.

       PROCEDURE DIVISION.
       BEGIN.
           ADD NUM1, NUM2 GIVING NUM3
           DISPLAY NUM3
           GOBACK.