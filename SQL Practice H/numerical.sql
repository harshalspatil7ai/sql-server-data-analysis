select * from users;
select count(*) from users;
select count(*) from users where gender='male';
select count(*) from users where gender ='female';
select count(*) from users where gender ='others';
select min(salary) as min_salary,max(salary) as max_salary from users;
select gender,min(salary) as min_salary,max(salary) as max_salary from users where gender='male';
select sum(salary) as total_salary from users where gender='male';
select avg(salary) as average_salary from users where gender='female';
select city,sum(salary) as total_salary from users group by city;
select name,length(name) as length_name from users;
select city,length(city) as length_city from users;
select name,lower(name) as lower_name from users;
select name , upper(name) as upper_names from users;
select concat(name,'<<',email,'>>') as users_concat from users;
select now();
select name,year(date_of_birth) as users_dob from users;
select name,month(date_of_birth) as users_bm from users;
select name,day(date_of_birth) as users_bday from users;
select name,datediff(curdate(),date_of_birth) as days_lived from users;
select name,timestampdiff(year,date_of_birth,curdate()) as year_lived from users;
select salary,
        round(salary) as rounded,
        floor(salary) as floored,
        ceil(salary) as ceiled
from users;
select id,mod(id,2) as remainder from users;

select name,gender, if (gender="male","yes","no") as male_users from users;

	
        
