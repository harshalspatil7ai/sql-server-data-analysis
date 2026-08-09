select * from users;
select * from users where name like 'A%';
select * from users where name like '%A';
select * from users where name like '_A%';

SELECT * FROM users
ORDER BY id
LIMIT 5 OFFSET 10;

SELECT * FROM users
ORDER BY id
LIMIT 10, 5;

SELECT DISTINCT gender FROM users;


ALTER TABLE addresses
CHANGE COLUMN city location VARCHAR(150);

select * from addresses;

ALTER TABLE users
MODIFY COLUMN salary BIGINT;