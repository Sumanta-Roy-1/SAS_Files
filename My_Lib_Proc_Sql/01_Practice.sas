proc sql;
create table test(ID Num, name char(15), gender char(6));
insert into Test
values(101, "My Name","Male")
values(102, "my Name 2","Female");

quit;

proc sql;
create table test1(ID num, Name char(15), Gender char(6));

insert into Test1;

set( 101, "A", "F")
Set(102,"B", "M");

quit;

proc sql;
create table test as select * from sashelp.class;
quit;

/*Copy first 10 observation, feedback to get details on Log*/

proc sql outobs=10 feedback;
create table Test2 as select * from sashelp.class;
quit;

/*new variable in table*/

proc sql feedback;
create table Test2 as select *, (weight * 0.5) as X from sashelp.class;
quit;

proc sql;
create table Test as select name label="Student name" from sashelp.class;
quit;

/* change variable name*/

proc sql;
create table Test as select name as Student_name from sashelp.class;
quit;

/* sort*/

proc sql;

create table test as select * from sashelp.class where age>10 order by sex desc;
quit;

/*When statement like "if"*/

proc sql;
create table test as select *, case
when age between 11 and 13 then "Low"
when age between 14 and 16 then "High"
end as comments
from sashelp.class ;

/* Group by and Having*/

proc sql;
 select mean(height) as X, mean(weight) as Y from sashelp.class group by age having x>55;
 quit;
 
 proc sql;
 create table Class (Name char(20), age num, Gender char(10));
 Insert into class
 	values ("John", 44, "Male")
	values("Marry", 20, "Female")
	values("Brandon", 70, "Male")
	values("Jenifer",68, "Female")
	values("Jenifer",68, "Female") 
	values("Jenni", 35, "Female")
	;
quit;

/*Distinct Operater*/

proc sql;
select distinct * from class;
quit;

/*Alter a table*/

data test;
imput Supervisor_ID State$ JobCategory$;
cards;
1417	NJ	NA
1352	NY	NA
1106	CT	PT
1442	NJ	PT
1118	NY	PT
1405	NJ	SC
1564	NY	SC
1639	CT	TA
run;

proc sql;
alter table test add city char(15);
quit;

proc sql;
alter table test drop city;
quit;
/*Update*/
proc sql;
update test set state="CT", Jobcategory="ME"
where supervisor_id=1106;
quit;

proc sql;
update test2 set state=select+ 


/* UNION, UNION ALL, Intersect, Except */

/*joins
simple, inner
Outer: Full, left , right
natural
cros
coalesce
*/
