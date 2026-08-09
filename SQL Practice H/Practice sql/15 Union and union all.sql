-- Union and union all
-- union combine result of two or select statement and removing duplicate rows
-- union all  combine result of two or select statement and without removing duplicate rows

select * from users;
select * from admin_users;
create table admin_users (
id int primary key,
name varchar(100),
email varchar(100),
gender enum('male','female','other'),
date_of_birth date,
salary int);


INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

select name from users
UNION                              -- union
select name from admin_users;

SELECT name FROM users
UNION ALL                         -- union all
SELECT name FROM admin_users;

-- multiple columns
select name,salary from users
union 
select name,salary from admin_users;

-- Adding separate roles
select name, 'Users' as role  from users
union 
select name, "admins"  as role from admin_users;

-- order by
SELECT name,salary, 'users' as role  FROM users
UNION
SELECT name,salary, 'admins' as role  FROM admin_users
ORDER BY salary;