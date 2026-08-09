

--Primary Key Constraint

--Case 1 : When new is to be created
create table test_pk_1 (
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)

insert into test_pk_1 values(1,'M',23,'Mayank')

select * from test_pk_1

insert into test_pk_1 values (1,'F',19,'Priya')

insert into test_pk_1 values (null,'M',25,'Raj')

--truncate table test_pk_1


--Case 2 : Table Already exists
alter table test_pk_1
add primary key (age)

--drop table test_pk_2

create table test_pk_2 (
SID int not null unique,
firstname nvarchar(256),
age tinyint not null
)

alter table test_pk_2
add primary key (sid,age)

alter table test_pk_2
add primary key (sid);





--Foreign Key Constraint

--Case 1 : When the new table has to be created
create table test_Primary_key (
ID int primary key,
name varchar(256)
)

insert into test_primary_key values (1,'Mayank'),(2,'Raj'),(3,'Jayant')

select * from test_Primary_key

create table test_foreign_key (
ID int foreign key references test_primary_key(id),
course varchar(256)
)

insert into test_foreign_key values (1,'A')

select * from test_foreign_key

insert into test_foreign_key values (null,'B')

INSERT INTO test_foreign_key VALUES (5,'C')

--Case 2 : Table already exists
create table test_foreign_key_2 (ID int, course varchar(256))

alter table test_foreign_key_2
add foreign key (id) references test_primary_key(id)