ODS HTML 
   PATH = 'D:/Private/Sumanta Roy/Study/SAS/Files/'
   FILE = 'CARS2.html'
   STYLE = EGDefault;
proc SQL;
select make, model, invoice 
from sashelp.cars
where make in ('Audi','BMW')
and type = 'Sports'
;
quit;

proc SQL;
select make,mean(horsepower)as meanhp
from sashelp.cars
where make in ('Audi','BMW')
group by make;
quit;

ODS HTML CLOSE; 
