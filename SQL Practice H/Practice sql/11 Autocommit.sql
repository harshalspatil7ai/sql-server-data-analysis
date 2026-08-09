-- autocommit
-- use alway because this is the safe mpode of working with database

select * from users;
set autocommit=0;
update users set salary=75000 where id=1;
commit;
rollback;
set autocommit=1;