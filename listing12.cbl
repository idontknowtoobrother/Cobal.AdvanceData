       IDENTIFICATION DIVISION.
       PROGRAM-ID. REDEFINES3.
       AUTHOR. 62160246.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STUDENTREC. 
          02 STUDENTID        PIC 9(8)  VALUE 12345678.
          02 GPA              PIC 9V99  VALUE 3.25.
          02 FORENAME         PIC X(6)  VALUE "Matt".
          02 SURNAME          PIC X(8)  VALUE "Cullen".
          02 GENDER           PIC X     VALUE "M".
          02 PHONENUMBER      PIC X(14) VALUE "3536120228233".
             66 PERSONALINFO RENAMES FORENAME THRU PHONENUMBER.
             66 COLLEGEINFO RENAMES STUDENTID THRU SURNAME.
             66 STUDENTNAME RENAMES FORENAME THRU SURNAME.
       01 CONTACTINFO.
          02 STUDNAME. 
             03 STUDFORENAME  PIC X(6).
             03 STUDSURNAME   PIC X(8).
          02 STUDGENDER       PIC X.
          02 STUDPHONE        PIC X(14).
             66 MYPHONE RENAMES STUDPHONE.
       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Example 1"
           DISPLAY "All information = " STUDENTREC
           DISPLAY "College info = " COLLEGEINFO
           DISPLAY "Personal Info = " PERSONALINFO
           DISPLAY "Example 2"
           DISPLAY "Combined names = " STUDENTNAME
           MOVE PERSONALINFO TO CONTACTINFO
           DISPLAY "Example 3"
           DISPLAY "Name is " STUDNAME
           DISPLAY "Gender is " STUDGENDER
           DISPLAY "Phone is " STUDPHONE
           DISPLAY "Example 4"
           DISPLAY "MyPhone is " MYPHONE
           STOP RUN.