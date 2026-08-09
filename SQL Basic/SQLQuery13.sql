select * from Employees;
select * into #1 from employees;
select* from #1;

-- always remember to use where clause with update statement if not then your whole table update 
update #1
set salary=50000
where EmployeeID=2;

update #1
set Firstname='Sunny',Lastname='Patil'
where firstname='Alice';