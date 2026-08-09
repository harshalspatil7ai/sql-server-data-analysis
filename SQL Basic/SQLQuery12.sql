select * from employees;
insert into employees (EmployeeID,Firstname,lastname,Department,Salary,Hiredate)
values(9,'Nikhil','Patil',' ',70000,'2025-05-24')

insert into employees (EmployeeID,Firstname,lastname,Department,Salary,Hiredate)
values(10,'Prashant','Patil','0',45000,'2025-05-24')


insert into employees (EmployeeID,Firstname,lastname,Salary,Hiredate)
values(11,'Prashant','Patil',45000,'2025-05-24')

select * from employees
where department is null;

select * from employees
where department is not null;

select * from employees
where department='0';

select * from employees
where department=' ';

select * from employees
where department!='0';

select * from employees   -- NULL is an unknown value, so comparisons with NULL return UNKNOWN, and the WHERE clause returns only TRUE rows.
where department!=' ';










