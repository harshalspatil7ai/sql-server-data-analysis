-- select statenment is to query data from table
select * from users ;
select name,salary from users;
select * from users where salary =65000;
select * from users where gender="male";
select * from users where gender!="male";
select * from users where gender <> "male";
select * from users where date_of_birth <'2008-08-09';   -- Before birth
select * from users where date_of_birth >'2008-08-09';       -- Afteer birth
select * from users where id >10;
select * from users where id<=7;
select * from users where id =4;
select * from users where id <5;
select * from users where date_of_birth is null;
select * from users where date_of_birth is not null;
select * from users where date_of_birth between '1990-01-01' and '2000-12-31';
select * from users where gender in("male","other");
select * from users where name like 'a%';  -- starts with
select * from users where name like '%a';  -- ends with
select * from users where name like '%l%';  -- contain load
select * from users where gender='male' and date_of_birth='2005-04-16';
select * from users where gender ='male' or gender='other';
select * from users order by  id desc;
select * from users order by date_of_birth asc;
select * from users limit 5;
select * from users  limit 10 offset 5;
select * from users limit 5,10;
select * from users order by created_at asc limit 5;
SELECT * FROM users WHERE salary > 60000 ORDER BY created_at DESC LIMIT 5;
SELECT * FROM users ORDER BY salary DESC;
SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000;

