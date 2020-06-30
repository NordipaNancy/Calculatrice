       IDENTIFICATION DIVISION.
       PROGRAM-ID. Tableau.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       1   lesEntrees.
       2   num1 PIC 99 VALUE 0.
       2   num2 PIC 99 VALUE ZERO.

       77  produit PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "entrer la 1ere valeur :" WITH NO ADVANCING.
           ACCEPT num1.

           DISPLAY "entrer la 2eme valeur :" WITH NO ADVANCING.
           ACCEPT num2.

           DIVIDE num1 BY num2 GIVING Produit.
      *     COMPUTE Produit = num1 *   num2.
           DISPLAY "produit = " produit.

           STOP RUN.
       END PROGRAM Tableau.
