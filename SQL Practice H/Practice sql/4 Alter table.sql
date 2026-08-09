-- Alter table means modifying existing table change structure of existing table by add drop and modify column

select * from users;
Alter table users ADD column is_active boolean default true;
alter table users drop column is_active;
alter table users modify column name varchar(150);
alter table users modify column name varchar (100);
alter table users modify column email varchar(100) First;
alter table users modify column email varchar(100) after name;
alter table users add column salary int after date_of_birth;