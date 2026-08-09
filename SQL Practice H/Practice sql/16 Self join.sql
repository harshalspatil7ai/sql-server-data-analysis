-- Self Join -- are regular join,but table is join by itself

select * from users;
alter table users add column referred_by_id int;

update users set referred_by_id=1 where id in(4,12,15,17,100);
update users set referred_by_id=4 where id in(10,13,20,66,67);
update users set referred_by_id=100 where id in(1,10,14,33);
update users set referred_by_id=66 where id in(11,16,18,21);
update users set referred_by_id=10 where id in(22,25,29,33);

select 
a.id,
a.name as user_name,
b.name as referred_by
from users a
inner join users b on a.referred_by_id=b.id