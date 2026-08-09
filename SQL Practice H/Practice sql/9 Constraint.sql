-- mysql constraints 
-- Mysql constraint are rules apply to table columns to ensures accuracy,validity and integrity of data 

select * from users;
-- alter table users  add constraint unique_email unique(email);
-- change existing column not null 
-- alter table users modify column name varchar(100) not null;
-- make column nullable again 
-- alter table users modify column name varchar((100) null;
-- check constraint -- ensure value in column satisfying specify condition 
ALTER TABLE users
ADD CONSTRAINT chk_dob
CHECK (date_of_birth >= '1980-01-01');
INSERT INTO users
(name, email, gender, date_of_birth, salary)
VALUES
('Test', 'test@gmail.com', 'male', '1975-10-10', 50000);

INSERT INTO users
(name, email, gender, date_of_birth, salary)
VALUES
('Test', 'test@gmail.com', 'male', '1982-10-10', 50000);

alter table users add column is_acctive boolean;
alter table users 
alter column is_acctive set default True;

INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES
('Amit', 'amit@gmail.com', 'male', '2002-05-10', 50000);

-- primary key uniquely identifying each row and must be not null and unique
-- alter table users add primery key (id);
-- auto_incriment is used with primary key to automatically asssign next no.
