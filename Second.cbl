       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  toto PIC 99.

       SCREEN SECTION.
       1   pla-res.
       2   BLANK SCREEN.
       2   LINE toto COL 10 VALUE 'toto vaut :'.
       2   PIC 99 FROM toto.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 5 to toto.
           DISPLAY pla-res.
           ADD 100 TO toto.
           DISPLAY pla-res.
      *     STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
