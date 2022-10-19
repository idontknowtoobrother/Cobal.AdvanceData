       IDENTIFICATION DIVISION.
       PROGRAM-ID. REDEFINES1.
       AUTHOR. 62160246.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 INPUTSTRING  PIC X(8).

       01 WORKAREA.
          02 FNUM      PIC 9(5)      VALUE ZEROS.
          02 SNUM      PIC 99        VALUE ZEROS.
       01 WORKNUM REDEFINES WORKAREA
                       PIC 99999V99.

       01 EDITEDNUM    PIC ZZ,ZZ9.99.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Enter a decimal Number - " WITH NO ADVANCING
           ACCEPT INPUTSTRING
           UNSTRING INPUTSTRING DELIMITED BY ".", INTO
              FNUM, SNUM
           MOVE WORKNUM TO EDITEDNUM
           DISPLAY "Decimal Number = " EDITEDNUM
           ADD 10 TO WORKNUM
           MOVE WORKNUM TO EDITEDNUM
           DISPLAY "Decimal Number = " EDITEDNUM
           .