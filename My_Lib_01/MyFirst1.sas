
data myfirst.one;
input ID Name $ age;
datalines;
101 Roy 30
102 Pratime 26
run;

data test;
set myfirst.one;
run;

proc print data = test;
run;

data work2;
infile datalines;
input ID Name $ age;
datalines;
101 Roy 30
102 Pratime 26
run;

data work2;
infile "D:\Public\SAS\Files\Sample1.csv";
input ID Name $ age;
run;
filename Myfile "D:\Public\SAS\Files\Sample1.csv";
data work3;
infile Myfile;
input ID Name $ age;
run;
