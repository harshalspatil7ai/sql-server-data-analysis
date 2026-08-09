select * from employees;
--1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
select * from employees where Department='IT' and salary>75000;
--2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
select * from employees where Department='HR' or salary<60000;
--3. How do you select employees who do not work in the 'Finance' department?
select * from employees where Department!='Finance';
select * from Employees where Department not in ('Finance')
--or
select * from Employees where not Department = 'Finance'
--4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
select * from Employees where salary between 60000 and 70000 and department='Finance';
--5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?
select * from Employees where department='IT' and not salary>80000;
-- or
select * from Employees where Department = 'Finance' and Salary<=80000
--6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
select * from Employees where Department = 'Finance' or department='HR' and Salary>65000;
--7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
select * from Employees where lastname like 's%' and Department!='HR';
--8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
select * from Employees where Department != 'IT' and Salary>70000;
--9. How do you select employees who work in the 'IT' department and either have a salary greater than 75,000 or have the first name 'Laura'?
--select * from Employees where Department = 'IT' or Salary>75000 or firstname='Laura'; -- OR ahe any condition true execute hoil
select * from Employees where (firstname='Laura' or Salary>75000 )and Department = 'IT' ; -- must department it
--10. How do you find employees who do not work in the 'HR' or 'IT' departments?
select * from Employees where Department != 'It' and department!='HR';