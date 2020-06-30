       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77  a PIC 999.

       SCREEN SECTION.
       1   pla-ini.
      * 2   BLANK SCREEN.
       2   LINE a COL 10 VALUE 'ligne number :'.
       2   PIC zz FROM a.

       PROCEDURE DIVISION.
           MAIN-PROCEDURE.
           MOVE 42 TO a.
           PERFORM TEST BEFORE VARYING a FROM 5 BY 2 UNTIL a > 20
           DISPLAY pla-ini
           END-PERFORM


           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
