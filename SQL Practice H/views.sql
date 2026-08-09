select * from users;
CREATE VIEW high_salary_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;

select* from high_salary_users;

UPDATE users
SET salary = 72000
WHERE id =3;
drop view high_users;
drop view rich_users;
drop view high_salary_users;