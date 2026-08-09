select * from users;
set autocommit=0;
update users set salary=80000 where id=1;
commit;
set autocommit=1;
update users set salary=90000 where id=1;
update users set salary=44000 where id=8;




