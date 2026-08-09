select * from users where gender='male';
select * from users where gender='female';
select * from users where gender <> 'male';
select * from users where gender !='male';
select * from users where  date_of_birth < '1995-09-09';
select * from users where  date_of_birth > '1995-09-09';
select * from users where id >'10';
select * from users where id <='10';
select * from users where date_of_birth is null;
select * from users where date_of_birth is not  null;
SELECT * FROM users WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';
select * from users where gender in ('male','female');
select * from users where name like 'A%';  -- starts with a
select * from users where name like '%a';  -- end with a
SELECT * FROM users WHERE name LIKE '%ha';
SELECT * FROM users where gender='male' and salary>'30000';
SELECT * FROM users ORDER BY date_of_birth ASC;
SELECT * FROM users ORDER BY name DESC;
SELECT * FROM users LIMIT 5;-- Top 5 rows
SELECT * FROM users LIMIT 10 OFFSET 5;-- Skip first 5 rows, then get next 10
SELECT * FROM users LIMIT 5, 10;-- Get 10 rows starting from the 6th row
SELECT * FROM users ORDER BY created_at DESC LIMIT 10;
SELECT * FROM users WHERE salary > 60000 ORDER BY created_at DESC LIMIT 5;
SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000;




