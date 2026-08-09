create table user_log(
id int auto_increment primary key,
user_id int ,
name varchar(100),
created_on timestamp  default current_timestamp
);

select * from users;

DELIMITER $$
create trigger after_user_add
after insert on users 
for each row
begin 
insert into user_log (user_id,name)
values(NEW.id,NEW.name);
end $$
DELIMITER ;
call Adduser('sanjay','smpatil@gmail.com','male','1984-12-28','75000');
select * from user_log;
-- drop trigger also can use


