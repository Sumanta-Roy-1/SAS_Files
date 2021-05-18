/* Example */

data trial3;
input pid age name$ center$ area$;
cards;
100 24 kiran appolo hyd
101 25 kumar care vij
102 26 madhu nims nir
104 32 mohan care	wng
105 30 midhi nims	hyd
;
run;

proc print data=trail3;
run;

/*REPLACE Option -
this will block the the existing dataset to replced by same name

*/

Data trial3 (replace=no); /*Used Replace*/
input pid age;
cards;
100 24
101 25
;
run;
proc print data=trial3;run;

/* READ Option -
using this the dataset can be used in read only so that no change can be done
*/

data clinical (password=apple read=orange);
input pid age name$ center$ area$;
cards;
100 24 kiran appolo hyd
101 25 kumar care vij
102 26 madhu nims nir
104 32 mohan care	wng
105 30 midhi nims	hyd
;
run;

proc print data=clinical;
run;

/* FIRST OBS and OBS -
to get data in squential order within a range*/

Data medi;
input pid age name$ center$ area$;
cards;
100 24 kiran appolo hyd
101 25 kumar care vij
102 26 madhu nims nir
104 32 mohan care	wng
105 30 midhi nims	hyd
;
run;

proc print data=medi (firstobs=4 obs=5);
run;

/* LABEL - 
applying label to the dataset  - columns*/

Data medi (label="Medical Patient info");
label 	pid="Patient ID"  /* Label details ---*/
		age="Age of Patient"
		name="Name of Patient"
		Center="Site of the Patient"
		area="Birth Place of the Patient";

input pid age name$ center$ area$;
cards;
100 24 kiran appolo hyd
101 25 kumar care vij
102 26 madhu nims nir
104 32 mohan care	wng
105 30 midhi nims	hyd
;
run;

proc print data=medi label; /* Add label*/
run;

/*SET Otion -
this will allow you to copy a dataset to another dataset*/

data CC_medi;
	set medi;
run;
proc print data=cc_medi;
run;

/*KEEP Option for Column/variables
This will you the copy only the requeired dataset to another dataset*/

data Keep_medi;
	set cc_medi(keep= pid age);
run;

/*DROP Option for Column/variables*/

Data Drop_medi;
	set cc_medi(drop=area);
run;

/*WHERE - to select specific rows / observations*/

Data trial_new1;
	set cc_medi (where=(center="nims"));
run;

/* Demostrating saving of your program in SASUSER library using set to save the part of data*/

Data labdata;
	set sashelp.class(obs=3);
run;
