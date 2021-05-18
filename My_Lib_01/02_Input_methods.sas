/*
different input methods available in SAS.

List Input Method
Named Input Method
Column Input Method
Formatted Input Method */

/*list input*/
DATA TEMP;
INPUT EMPID ENAME $ DEPT $ ;
DATALINES;
1 Rick  IT
2 Dan  OPS
3 Tusar  IT
4 Pranab  OPS
5 Rasmi  FIN
;
PROC PRINT DATA = TEMP;
RUN;

/* Named Input Method */
DATA TEMP;
INPUT EMPID= ENAME=$ DEPT=$;
DATALINES;
EMPID=1 ENAME=Rick  DEPT=IT
EMPID=2 ENAME=Dan  DEPT=OPS
EMPID=3 ENAME=Tusar  DEPT=IT
EMPID=4 ENAME=Pranab  DEPT=OPS
EMPID=5 ENAME=Rasmi  DEPT=FIN
;
PROC PRINT DATA=TEMP;
RUN;

/* Column Input Method */
DATA TEMP;
INPUT   EMPID 1-3 ENAME $ 4-12 DEPT $ 13-16;
DATALINES;
14 Rick     IT 
241Dan      OPS 
30 Sanvi    IT 
410Chanchal OPS 
52 Piyu     FIN 
;
PROC PRINT DATA = TEMP;
RUN;


/* Formatted Input Method */
DATA TEMP;
INPUT   @1 EMPID $ @4 ENAME $ @13 DEPT $ ;
DATALINES;
14 Rick     IT 
241 Dan      OPS 
30 Sanvi    IT 
410 Chanchal OPS 
52 Piyu     FIN 
;
PROC PRINT DATA = TEMP;
RUN;
