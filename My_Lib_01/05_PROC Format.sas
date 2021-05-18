Data Employee;
	Input empid name $ salary Dept $ Typ;
	format name $upcase9.;
datalines;
1 Rick 623.3	IT 1 		 
2 Dan 515.2 	OPS 2	
3 Mike 611.5 	IT 2 	
4 Ryan 729.1    HR 4 
5 Gary 843.25   FIN 5 
6 Tusar 578.6   IT 6 
7 Pranab 632.8  OPS 3
8 Rasmi 722.5   FIN 4 
;
RUN;

Proc print DATA = employee;
run;

/*Character to Character*/
Proc Format;
Value $dep
'IT' = 'Information Technology'
"OPS" = "Operations"
;
run;

/* Numeric to Character*/
proc Format;
Value Tp
1 = "One Type"
2 = "Two  Type"
3 = "Three  Type"
4 = "Four Type"
5 = "Five Type"
6 = "Six Type"
;
run;

Proc print data = Employee;
format Dept $dep. Typ Tp.;
run;
