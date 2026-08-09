use startersql;
select * from addresses;
select* from users;
select users.name,users.gender,users.id,addresses.id as addresses_id,addresses.city,addresses.state
from users
inner join addresses on users.id=addresses.user_id;


select users.name,addresses.city
from users
left join addresses on users.id=addresses.user_id;

select users.name,addresses.state,users.email, addresses.id as addresses_id
from users
left join addresses on users.id=addresses.user_id;

select users.name,addresses.state,users.email, addresses.id as addresses_id
from users
right join addresses on users.id=addresses.user_id;





