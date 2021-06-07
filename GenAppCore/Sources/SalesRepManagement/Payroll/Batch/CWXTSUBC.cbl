       IDENTIFICATION DIVISION.
       PROGRAM-ID.  CWXTSUBC.
      ******************************************************************
      *                                                                *
      ******      C O M P U W A R E   C O R P O R A T I O N       ******
      *                                                                *
      *  THIS CALLED PROGRAM IS THE COBOL DEMO PROGRAM USED FOR        *
      *  XPEDITER/TSO TRAINING SESSIONS.                               *
      *                                                                *
      *  CALCULATES COMMISIONS FOR SALES AND MANAGEMENT EMPLOYEE       *
      *  BASED ON MONTHLY SALES RATES                                  *
      *                                                                *
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      ***
      ***
      ***
       COPY SUBCRNGS.
      ***
      ***
      ***
       LINKAGE SECTION.
       01  EMP-TYPE             PIC X.
       01  SALES-AMOUNT         PIC 9(6)V99.
       01  COMM-TOTAL           PIC 9(5)V99     COMP-3.
      ***
      ***
      ***
       PROCEDURE DIVISION USING EMP-TYPE, SALES-AMOUNT, COMM-TOTAL.
       0000-MAINLINE.

           IF EMP-TYPE EQUAL 'S'
               PERFORM 1000-PROCESS-SALES
           ELSE
               IF EMP-TYPE EQUAL 'M'
                   PERFORM 2000-PROCESS-MANAGEMENT.
           GOBACK.
      ***
      ***
      ***
       1000-PROCESS-SALES.
           MOVE SALES-AMOUNT TO SALES-RANGE.
           IF S-RANGE1
               SET SALES-IX TO 1
           ELSE
               IF S-RANGE2
                   SET SALES-IX TO 2
               ELSE
                   IF S-RANGE3
                       SET SALES-IX TO 3
                   ELSE
                       IF S-RANGE4
                           SET SALES-IX TO 4
                       ELSE
                           SET SALES-IX TO 5.
           COMPUTE COMM-TOTAL = SALES-AMOUNT * SALES-RATE(SALES-IX).
      ***
      ***
      ***
       2000-PROCESS-MANAGEMENT.
           MOVE SALES-AMOUNT TO MGMT-RANGE.
           IF M-RANGE1
               SET MGMT-IX TO 1
           ELSE
               IF M-RANGE2
                   SET MGMT-IX TO 2
               ELSE
                   IF M-RANGE3
                       SET MGMT-IX TO 3
                   ELSE
                       IF M-RANGE4
                           SET MGMT-IX TO 4
                       ELSE
                           SET MGMT-IX TO 5.
           COMPUTE COMM-TOTAL = SALES-AMOUNT * MGMT-RATE(MGMT-IX).
