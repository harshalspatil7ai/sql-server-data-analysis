-- sql joins are used to combine rows from two or more tables based on related columns
-- inner join -- return only matching rows from both tables

select users.name,addresses.city
from users 
inner join addresses on users.id=addresses.user_id;

-- left join return all rows from left table and matching rows from another table

select users.name,addresses.city
from users
left join addresses on users.id=addresses.user_id;

-- right join return all rows from right table and matching rows from another table
select users.name,addresses.city
from users 
right join addresses on users.id=addresses.user_id;