select * from employees;
insert into employees (EmployeeID,Firstname,lastname,Department,Salary,Hiredate)
values(6,'Harshal','Patil','Finance',85000,'2026-07-24');

insert into employees (EmployeeID,Firstname,lastname,Department,Salary,Hiredate)
values(7,'Tushar','Patil','HR',70000,'2025-05-24');

insert into employees 
values(8,'Rahul','Patil','IT',80000,'2026-01-17');

select* from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='Employees';