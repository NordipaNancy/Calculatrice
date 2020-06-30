       IDENTIFICATION DIVISION.
       PROGRAM-ID. MON-PROGRAM.

       ENVIRONMENT DIVISION.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77  toto PIC 99v99.
       88  parfait VALUE 20.
       88  passable VALUE 10 THRU 11.99.
       88  assez_bien VALUE 12 THRU 14.99.
       88  bein VALUE 15 THRU 19.99.
       77  titi PIC 99.



       SCREEN SECTION.
       1   io-pass.
      * 2   BLANK SCREEN.
       2   LINE 7 COL 10 VALUE 'cest passable'.

       1   io-parfait.
      * 2   BLANK SCREEN.
       2   LINE 7 COL 10 VALUE 'cest parfait'.

       1   io-bien.
      * 2   BLANK SCREEN.
       2   LINE 7 COL 10 VALUE 'cest bien'.

       1   io-assez_bien.
      * 2   BLANK SCREEN.
       2   LINE 7 COL 10 VALUE 'cest assez bien'.

       1   io-perfom.
       2   LINE 8 COL 10 VALUE 'valeur de la variable : '.
       2   PIC 99 FROM titi.

       PROCEDURE DIVISION.
      *     MAIN-PROCEDURE.
           INITIALISE toto.

           MOVE 13.6 TO toto.

           IF passable THEN
               DISPLAY io-pass
           ELSE IF bein THEN
               DISPLAY io-bien
           ELSE IF parfait THEN
               DISPLAY io-parfait
           ELSE DISPLAY io-assez_bien
           END-IF
           END-IF
           END-IF.

           PERFORM 5 TIMES
               COMPUTE titi = titi + 5
           END-PERFORM

           DISPLAY io-perfom.

       STOP RUN.
       END PROGRAM MON-PROGRAM.
