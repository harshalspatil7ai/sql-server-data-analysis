create database Harshal_1;

use Harshal_1;

create table users (
id int auto_increment primary key,
name varchar(15) not null,
email varchar(20) unique not null,
gender enum('male','female','other'),
birth_date Date,
created_time timestamp default current_timestamp 
);

select * from users;

select name,email from users;

Rename Table users to customers;

select * from customers;

rename table customers to users;

select * from users;

alter table users add column is_activate boolean default True;
select * from users;
alter table users drop column is_activate;
select * from users;
alter table users modify column name varchar(50);
alter table users modify column email varchar(20) first;
select * from users;
alter table users modify column email varchar(20) after id;
select * from users;

insert into users values
(1,'hspatil2@gmail',"harsh",'male','1995-05-14',default);
insert into  users (email,name,gender,birth_date)values
('vaishu@44gmail','vaishu',"female",'2007-08-11');
INSERT INTO users (email,name,gender,birth_date) VALUES
('charlie@example.com','Charlie', 'Other', '1988-02-17'),
('david@example.com','David', 'Male', '2000-08-09'),
('eva@example.com','Eva',  'Female', '1993-12-30');


