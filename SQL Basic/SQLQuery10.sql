select * from employeerecords;
select * from employeerecords 
where not firstname='John';

select * from employeerecords 
where not  firstname='John' and not Department='HR';

select * from employeerecords 
where not lastname='smith' and not department='finance';

select * from employeerecords 
where not lastname='miller' or not department='HR';


select * from employeerecords;
select * from employeerecords
where salary between 75000 and 85000;

select * from employeerecords
where salary>=75000 and Salary<=85000;

select * from employeerecords
where salary not between 75000 and 85000;


select * from employeerecords
where not salary between 75000 and 85000;

select * from employeerecords
where department='HR' or Department='IT';

select * from employeerecords
where department in('HR','IT');

select * from employeerecords
where department not  in('HR','IT');