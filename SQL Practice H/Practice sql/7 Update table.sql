-- update table i.e. update existing data in table
-- update statement is used to change values in  one or more row 
-- where condition is mandatory or important

select * from users;
update users set  name='Purva' where id =1;
update users set email='purva@123gmail',gender='female',date_of_birth='2005-01-30',salary=45000 where id =1;
update users set salary=80000 where id=4;
update users set name ='Purva Patil' where email='purva@123gmail';
set sql_safe_updates=0;
update users set salary=salary + 10000 where salary<60000;
set sql_safe_updates=1;
update users set gender='other' where id=19;

