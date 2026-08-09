select * from admin_users;
select * from users;
select name from users
union 
select name from admin_users;

select name,email from users
union 
select name,email from admin_users;

select name,email,'users' as role from users
union 
select name,email,'admin' as role  from admin_users;


select name,email,date_of_birth,'users' as role from users
union 
select name,email,date_of_birth,'admin' as role  from admin_users
order by date_of_birth;

select name from users
union all 
select name from admin_users;

