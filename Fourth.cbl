       IDENTIFICATION DIVISION.
       PROGRAM-ID. PlusOuMoins.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  triche PIC 9(8) VALUE 0.
       77  seed PIC 9(8) VALUE 0.
       77  nbAleatoire PIC 99.
       77  nbEntrees PIC 99.

       01  tab.
           02  ligne-carre OCCURS 3.
           03  cellule OCCURS 5.
           04  prenom PIC x(30).
           04  nom PIC x(30).

       SCREEN SECTION.
       1   io-titre.
       2   BLANK SCREEN.
       2   LINE 2 COL 15 VALUE 'Jeu en kobyle '.

      * 1   io-plus.
      * 2   LINE 4 COL 5 VALUE 'Cest plus '.

       1   io-moins.
       2   LINE 4 COL 5 VALUE 'Cest moins     '.

       1   io-trouve.
       2   LINE 4 COL 5 VALUE 'Bravo cest trouve '.

       1   io-nb.
       2   LINE 6 COL 5 VALUE 'Veuillez saisir un nombre : '.
       2   PIC zz TO nbEntrees REQUIRED.

       1   io-plus.
       2   LINE 4 COL 5 value 'cest plus grand'
           FOREGROUND-COLOR 9
           BACKGROUND-COLOR 10.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           INITIALISE nbEntrees.
           MOVE FUNCTION CURRENT-DATE(9:8) TO seed.
           DISPLAY io-titre.
           COMPUTE nbAleatoire = FUNCTION RANDOM (seed) * 10 + 1.

           MOVE nbAleatoire to triche.
           DISPLAY triche.

           PERFORM UNTIL nbEntrees = nbAleatoire
               DISPLAY io-nb
               ACCEPT io-nb

               IF nbEntrees > nbAleatoire THEN
                   DISPLAY io-moins
               ELSE
                   DISPLAY io-plus
               END-IF
           END-PERFORM.

           DISPLAY io-trouve.
           STOP RUN.
       END PROGRAM PlusOuMoins.
