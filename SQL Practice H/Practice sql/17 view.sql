-- views are virtual table based on result of select query cant store data only reflect current data

create view high_salary_users as
select id,name,salary from users
where salary>70000;

select * from users;
select * from high_salary_users;

update users 
set salary=72000
where id=10;

-- drop view high_salary_users