-- Delete - removing data from table
-- delete rows from table

select * from users;
set sql_safe_updates=0;
delete from users where salary<50000;
set sql_safe_updates=1;
delete from users where salary is null;

