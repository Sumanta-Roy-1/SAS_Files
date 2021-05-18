data medi;
	input pid age jdate;
informat jdate ddmmyy10.;
format jdate ddmmyy10.;
cards;
100 24 21/05/2019
200 25 01-01-2015
;
run;
proc print;
run;
