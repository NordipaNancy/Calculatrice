       IDENTIFICATION DIVISION.
       PROGRAM-ID. Tableau.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  n PIC 99.
       77  i PIC 99.

       1   tab.
       2   entier PIC 99 OCCURS 99.


       SCREEN SECTION.
       1   pls-n.
       2   BLANK SCREEN.
       2   LINE 5 COL 8 VALUE 'valeur de n : '.
       2   PIC 99 to n REQUIRED.

       1   pla-tab.
      * 2   BLANK SCREEN.
      * 2   LINE 2.
      * 2   OCCURS 99.
      * 3   LINE + 1 COL 5 PIC zz FROM entier.
       2   LINE i.
       2   COL 5 PIC zz FROM entier(i).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           INITIALIZE tab.

      *     MOVE 25 TO n.
           DISPLAY pls-n.
           ACCEPT pls-n.

           PERFORM TEST AFTER VARYING i FROM 1 BY 1 UNTIL i = n
               MOVE i TO entier(i)
               DISPLAY pla-tab
           END-PERFORM.

      *     SORT entier DESCENDING.


           STOP RUN.
       END PROGRAM Tableau.
