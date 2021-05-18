libname mylib "D:\Public\SAS\MyLibrary";

data mylib.work5;
input id height weight gendr $ age;
datalines;
2 78 104 F 22
5 28 144 M 62
4 48 134 F 32
;

data temp1;
set mylib.work5;
avg=(height + weight)/2;
where gendr = "F";
run;

data tempdata;
infile datalines missover;
input obs date $ Are Class Age;
datalines;
1 	JAN1999	56	78	14
2 	FEB1999	32	109	14
3 	FEB1999	35	106	14
4 	FEB1999	47	115	22
5 	MAY1999	55	121	31
6 	JUN1999	61	114	31
7 	JUL1999	67	102	72
8 	AUG1999	64		
9 	SEP1999	78	77	54
10 	OCT1999	81	62	47
11 	NOV1999	84	31	52
12 	DEC1999	2	44	55
13 	JAN2000	37	91	83
14 	FEB2000	41	102	27
15 	MAR2000	52	98	19
16 	APR2000	61	118	22
17 	MAY2000	49	88	29
18 	JUN2000	24	101	54
19 	JUL2000	45	91	69
20 	AUG2000	63	65	53
21 	SEP2000	60	49	68
22 	OCT2000	78	70	41
23 	NOV2000	82	44	58
24 	DEC2000	93	57	47
;	

data temp2 (keep = age class);
set tempdata;
run;

data temp3;
set tempdata (obs=10);
run;


