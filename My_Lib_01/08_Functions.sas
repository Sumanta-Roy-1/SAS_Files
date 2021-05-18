/* Funtions

UPCASE
LOWCASE
PROPCASE - 
	propcase("abcd")			"Abcd"


*/

Data aa;
	set SAShelp.class;
	name=upcase(name);

run;
proc print data=aa;
run;

/*
COMPBL(compress blanks into single blank)
	compbl("A C     XYZ)			"A C XYZ"
COMPRESS
	compress(compress specific value)

*/

data bio;
string="a  b  c  d";
string1="9(09) 567-234-542";
string2=compress(string);
string3=compress(string1,"()-");
run;
proc print data=bio;
run;

/*
FIND(finding the possition of a specific string within a string)
INDEXW(get the possition number)
CAT(concotenate)


*/



/*Numeric Function
INT
ROUND
CEIL(rounds upto hihest value)
FLOOR(rounds upto to lowest value)
ABS
FACT
LOG
LAG
lOG10

*/
