use sales;

-- Left Join   --Returns all records from the left table and the matching records from the right table.
select * from table1;
select * from table2;
select a.c1,a.c2,b.c3 from table1 a
left join
table2 b 
on a.c1=b.c1;


-- Right Join  --Returns all records from the right table and the matching records from the left table.
select * from table1;
select * from table2;
select * from table1 
right join
table2 
on table1.c1=table2.c1;



select a.c1,a.c2,b.c3 from table1 a
Right join
table2 b 
on a.c1=b.c1;

--Left anti join   --Returns records from the left table that have no matching record in the right table.
select * from table1 --
left join table2
on table1.c1=table2.c1
where table2.c1 is null;


--right anti join   --Returns records from the right table that have no matching record in the left table.
select * from table1 
right join table2
on table1.c1=table2.c1
where table1.c1 is null;

--full outer join   --Returns all records from both tables, with NULL for non-matching rows.
select * from table1;
select * from table2;

select * from table1 
full outer join table2
on table1.c1=table2.c1;

--self join   --Joins a table with itself to retrieve related data from the same table.
select * from table1;
select * from table2;
select a.c1,b.c2
from table1 as a
inner join table1 as b
on a.c1=b.c1

