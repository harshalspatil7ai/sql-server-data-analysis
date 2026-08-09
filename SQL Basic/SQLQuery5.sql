select * into #temp1             -- this is the temporary table 1) # single pound sign run only in same window 2) ## run in other window also
from Employees;
select * from #temp1;

select * into ##temp2
from EmployeeRecords;           
select * from ##temp2;