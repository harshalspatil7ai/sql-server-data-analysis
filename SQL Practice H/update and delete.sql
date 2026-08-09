select * from users;
update users set name='harsh' where id='1';
update users set name='Harshal',email='hspatil@gmail' where id=2;
select * from users;
START TRANSACTION;   -- to update data for temporary 
update users set name='purva',email='purva@12gmail.com' where id=3;
rollback;          -- this is for to see original data
-- we need where conditon always if its not then query perform on all rows
update users set salary='70000' where id=5;
update users set name='Aisha Khan' where email='aisha@example.com';
SELECT * FROM users WHERE salary < 60000;
SET SQL_SAFE_UPDATES = 0;
update users set salary=salary+10000 where salary<60000;
select * from users;
set sql_safe_updates=1;
update users set salary=salary+10000 where salary<60000;
select * from users;
update users set gender='other' where id=10;
delete from users where id=4;
delete from users where gender='other';


