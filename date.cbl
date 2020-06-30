      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  date-du-jour PIC 9(6).
       77  jour PIC 9(5).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            ACCEPT date-du-jour FROM DATE.
            DISPLAY jour.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
