DELIMITER $$
create procedure sample()
begin 
select * from users;
end$$
DELIMITER ;
CALL sample();

DELIMITER $$
create procedure Adduser(
in p_name varchar(100),
in p_email varchar(100),
in p_gender ENUM("male","female","other"),
in p_dob date,
in p_salary int
)
begin
  INSERT INTO users (name, email, gender, date_of_birth, salary)
   VALUES (p_name, p_email, p_gender, p_dob, p_salary);
end $$
DELIMITER ;

call Adduser('mahendra','mahendra@gmail.com','male','1998-07-04','50000');

SHOW PROCEDURE STATUS WHERE Db = 'startersql';

drop procedure sample;

