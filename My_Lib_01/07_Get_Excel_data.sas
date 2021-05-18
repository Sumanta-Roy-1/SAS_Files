/*PROC Import

File type 			Extension				DBMS

excel				.xls (xlsx)				excel/xls/xlsx
access 				.mdb					access
delimeter			.txt					dlm
csv					.csv					csv
					.txt
tab file			.txt					tab

*/


/*  Import Procedue 
proc import datafile="file location/filepath'
	out=dataset name dbms=dbms type
*/

proc import datafile="D:\Private\Sumanta Roy\Study\SAS\Excel Files\Excel1.xls"
	Out=bill3 dbms=xls replace;
	sheet="Sheet1";
run;
proc print data=bill3;
run;

/* Add range, */
proc import datafile="D:\Private\Sumanta Roy\Study\SAS\Excel Files\Excel1.xls"
	Out=bill1 dbms=xls replace;
	/*sheet="Sheet1";*/
	/*getname=no;*/
	/*datarow=3;*/
	range="sheet1$ a1:c3";
run;
proc print data=bill1;
run;

/*Export Procedure*/

proc export
outfile="D:\Private\Sumanta Roy\Study\SAS\Excel Files\Excel1_Out.xls"
data=medi dbms=xls Replace;
run;
