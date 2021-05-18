libname MyFirst "D:\Public\SAS\MyLibrary";

data Myfirst.Data;
input id height weight gender $ age;
datalines;
2 78 104 F 22
5 28 144 M 62
4 48 134 F 32
run;
 
