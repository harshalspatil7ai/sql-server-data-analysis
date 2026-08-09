select * from users;
select gender as ' Gender',avg(salary) as 'Avg Salary' from users group by gender;

select referred_id, count(*) as 'total_referred'
from users
WHERE referred_id IS NOT NULL
group by referred_id;

select gender as "Gender",avg(salary) as "Average Salary" 
from users 
group by gender
having avg(salary)>65000;

select referred_id,count(*) as 'total reffered'
from users
where referred_id is not null
group by referred_id
having count(*)>1;


SELECT gender, COUNT(*) AS total_users
FROM users
GROUP BY gender WITH ROLLUP;

