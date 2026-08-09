select * from users;
alter table users
add column referred_id int ;

update users set referred_id =3 where id in (2,5,9,12,15,20,25);
update users set referred_id =2 where id in (6,8,17,21,24);

select 
a.id,
a.name as users_name,
b.name as referred_by
from users a 
inner join users b on a.referred_id =b.id;


select 
a.id,
a.name as users_name,
b.name as referred_by
from users a 
left join users b on a.referred_id =b.id;


