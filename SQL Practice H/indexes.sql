use startersql;
select* from users;
show indexes from users;
create index city_index on users (salary);
select * from  users where email='raj@example.com';
create index idx_gender_salary on users (gender,salary);
select * from users where gender='male' and salary>=75000;
drop index city_index on users;