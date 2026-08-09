-- primary key auto_icriment only one command 
select * from users;
alter table users auto_increment=100;
INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES ('Rohan', 'rohan@gmail.com', 'male', '2002-01-01', 50000);