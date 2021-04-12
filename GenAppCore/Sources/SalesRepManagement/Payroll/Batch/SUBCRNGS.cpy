       01  MGMT-RANGE        PIC 9(6)V99.
           88  M-RANGE1           VALUES ARE      1 THRU 100000.
           88  M-RANGE2           VALUES ARE 100001 THRU 200000.
           88  M-RANGE3           VALUES ARE 200001 THRU 300000.
           88  M-RANGE4           VALUES ARE 300001 THRU 400000.
           88  M-RANGE5           VALUES ARE 400001 THRU 500000.
      *** 
      ***      
      ***
      ***
       01  MGMT-RATE-TABLE.
           05  FILLER           PIC SV999   VALUE  +.020.
           05  FILLER           PIC SV999   VALUE  +.025.
           05  FILLER           PIC SV999   VALUE  +.030.
           05  FILLER           PIC SV999   VALUE  +.035.
           05  FILLER           PIC SV999   VALUE  +.045.
       01  MGMT-RATE-REDEFINED REDEFINES MGMT-RATE-TABLE.
           05  MGMT-RATE-OCCURS OCCURS 5 TIMES INDEXED BY MGMT-IX.
               10  MGMT-RATE    PIC SV999.
      ***
      ***
      ***
       01  SALES-RANGE         PIC 9(6)V99.
           88  S-RANGE1        VALUES ARE      1 THRU  20000.
           88  S-RANGE2        VALUES ARE  20001 THRU  40000.
           88  S-RANGE3        VALUES ARE  40001 THRU  60000.
           88  S-RANGE4        VALUES ARE  60001 THRU  80000.
           88  S-RANGE5        VALUES ARE  80001 THRU 100000.
      ***
      ***
      ***
       01  SALES-RATE-TABLE.
           05  FILLER          PIC SV99  VALUE  +.02.
           05  FILLER          PIC SV99  VALUE  +.04.
           05  FILLER          PIC SV99  VALUE  +.06.
           05  FILLER          PIC SV99  VALUE  +.08.
           05  FILLER          PIC SV99  VALUE  +.10.
       01  SALES-RATE-REDEFINED REDEFINES SALES-RATE-TABLE.
           05  SALES-RATE-OCCURS OCCURS 5 TIMES INDEXED BY SALES-IX.
               10  SALES-RATE   PIC SV99.
