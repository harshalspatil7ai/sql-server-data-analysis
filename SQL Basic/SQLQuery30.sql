
create database constraints;

use constraints


--Constraints 
--Conditions that can be applied on columns of a table & these conditions are to be followed while
--inserting records into the table


--Not Null constraint

--Case 1 : We will have to create a new table
create table test_not_null ( 
EID int not null,
age tinyint,
firstname varchar(256)
)

select * from test_not_null

select * from INFORMATION_SCHEMA.columns 
where TABLE_NAME like 'test_not_null'

insert into test_not_null values (1,23,'Mayank')

insert into test_not_null values (null,23,'Mayank')

insert into test_not_null values(2,null,'Raj')


--Case 2 : the table already exists
--We want to make firstname column nullable

alter table test_not_null
alter column firstname varchar(256) not null

insert into test_not_null values (21,34,null)

alter table test_not_null
alter column age tinyint not null

select * from test_not_null




--Unique Constraint
--It ensures that a column consists of unique values

--Case 1 : when the table already exists
alter table test_unique
add unique (lastname)

--ALTER TABLE dbo.Saless  -- from chatgpt for understanding
--ADD CONSTRAINT UQ_ProductID
--UNIQUE (ProductID);




--Case 2 : We need to create the table
create table test_unique (
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)

select * from test_unique

insert into test_unique values (1,22,'Mayank','Mehera')

insert into test_unique values (1,24,'Rohit','Singh')  --*****************

insert into test_unique values (null,34,'Akhilesh','Jain')

insert into test_unique values (null,54,'Nitin','Singh') --******************

--truncate table test_unique




--Check Constraint
--It checks for certain condition that can be applied on the columns of a table, if this condition is not
--fulfilled, we will not be able to insert the records into the table

--Case 1 : Table doesn't exist
create table test_check (
EID int,
firstname varchar(256),
age tinyint check(age>=10)
)

select * from test_check

insert into test_check values (1,'Mayank','20')

insert into test_check values (2,'Raj',9)

update test_check set EID = 11 where EID = 1

--Case 2 : Table exists
alter table test_check
add check (eid>=1)

insert into test_check values(3,'Nitin',34)

insert into test_check values(30,'Nitin',34)

--ALTER TABLE Students  -- from chatgpt for example purpose
--ADD CONSTRAINT CHK_Age
--CHECK (Age >= 18);





--Default Constraint
--This constraint to provide default values to columns

--Case 1 : The table does not exist
create table test_default (
EID int default 5,
firstname varchar(256) default 'Rohit',
lastname varchar(256),
age tinyint
)

select * from test_default

insert into test_default values(1,'Nitin','Jain',23)

insert into test_default(lastname,age) values('Singh',34)

insert into test_default (lastname) values ('Grover')

--Case 2 : The table already exists

alter table test_default
add default 25 for age

insert into test_default (lastname) values('Jain')

select * from test_default




