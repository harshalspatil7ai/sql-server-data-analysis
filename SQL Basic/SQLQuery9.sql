select * from employeerecords;
select * from Employeerecords 
where Department = 'HR' and Salary = 60000;
select * from employeerecords 
where Lastname='miller' and employeeId=3;
select * from employeerecords 
where Department = 'HR' or Department='finance';
select * from employeeRecords
where (Department = 'HR' or Department ='Finance') and salary=75000;