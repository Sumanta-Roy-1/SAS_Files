libname mylib "D:\Public\SAS\MyLibrary";

data mylib.work2;
input id height weight gender $ age;
datalines;
2 78 104 F 22
5 28 144 M 62
4 48 134 F 32
;
proc print data = mylib.work2;
where height > 40;
run;

data mylib.mydata;
input flight_number 1-3 flight_origin $ 4-6 Flight_Destination $ 8-10 Mail 11-14 Rev;
Datalines;
811LGA     403 209 150634
271LGA PAR 492 308 123212
234LGA PAR 321 456 949302
923LGA LON 952 752 949503
;
run;

Data Check;
infile datalines missover; 
input Flightn flighto;
datalines;
81
13 14
15 16
;
run;




Data Truc;
/* infile datalines truncover; */
infile datalines Missover; 
input gender $ status $;
datalines;
M A
M A
F 
M A
M A
;
run;

Data test;
input sex $ days sale @@;
cards;
F 53 23 F 56 25 F 60 23 F 60 25 F 78 23 F 87 23 F 102  26
;
run;

data sample;
Infile datalines DLM = '|' DSD;
input id  height weight gender $ age;
datalines;
1|68|144||32
2| 78| 104|"M" | 22
5| 28| 144| M| 62
4| 48| 134| F| 32
;
run;

data sample;
Infile datalines  DSD ;
input id  height weight gender $ age;
datalines;
1,68,144,,32
2, 78, 104,"M" , 22
5, 28, 144, 'M', 62
4, 48, 134, F, 32
;
run;
