-- sql functions
-- aggregate functions  -- These are return single value from set of rows
select * from users;
select count(*) from users;
select count(*) from users where gender='female';
select count(*) from users where gender='male';
select count(*) from users where gender='other';
select min(salary) as Min_salary from users;
select min( salary) as min_salary, max(salary) as Max_salary from users;
select avg(salary) as Avg_salary from users;
select avg(salary) as Avg_salary_male  from users where gender ='male' ;
select avg(salary) as Avg_salary_female  from users where gender ='female' ;
select sum( salary) as Total_salary from users;
select gender, avg(salary) as AVg_salary  from users group by gender;


-- string functions
select name, length(name) as length_name from users;
select name,lower(name) as Lower_name from users;
select name, upper(name) as upper_name from users;
select concat(name , '<' , email , '>' ) as concat_name from users;

-- Date functions
select now();   -- for current time
select name,year(date_of_birth) as birth_year from users;   -- extract parts of dob
select name,month(date_of_birth) as birth_month from users;
select name,day(date_of_birth) as birth_day from users;
select name,datediff(curdate(),date_of_birth) as Lived_from_dob from users;
select name,timestampdiff(year,date_of_birth,curdate()) as age from users;

-- mathematical functions 
-- round() every time give near by decimal  
-- floor() always below decimal 12.50=12
-- ceil() always above decimal 12.50=13
-- mod() for even or odd no. finding

SELECT salary,
	   ROUND(salary) AS rounded,
       FLOOR(salary) AS floored,
       CEIL(salary) AS ceiled
FROM users;

select * from users where mod(id,2)=0;
select id,mod(id,2) as remainder from users;

-- conditional fuctions
select name,gender,
IF (gender='female','yes','no') as iS_female
from users;

select name,salary,
if(salary=55000,'yes','no') as select_salary from users;