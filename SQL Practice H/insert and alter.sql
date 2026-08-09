select  * from users ;
insert into users (name,email,gender,date_of_birth,salary)values
('purva','purva12@gmail.com','female','2005-01-30','50000');
alter table users add constraint unique_email unique (email) ;
alter table users add constraint chk_dob check (date_of_birth > '1980-01-01');
alter table users modify column name varchar(100) null;
insert into users (name,email,gender,date_of_birth,salary)values
(null,'purva1222@gmail.com','female','2005-01-30','50000');
alter table users modify column name varchar(100) not  null;
delete from users where id=27;
ALTER TABLE users DROP CONSTRAINT chk_dob;
insert into users (name,email,gender,date_of_birth,salary)values
('ishwar','ishu12@gmail.com','male','1978-01-30','50000');
alter table users add column city varchar(50);
update users set city =
case 
	when id =1 then 'pune'
    when id =2 then 'nashik'
    when id =3 then 'mumbai'
    when id =4 then 'jalgaon'
    when id =5 then 'pune'
    when id =6 then 'thane'
    when id =7 then 'shirdi'
    when id =8 then 'jalgaon'
end
where id in (1,2,3,4,5,6,7,8);
insert into users (name,email,gender,date_of_birth,salary)values
('vaishanvi','vaishu12@gmail.com','female','2007-08-11','50000');
    