select * into #3 from Employees;
select * from #3;
delete from #3 where Department='HR';
delete from #3 where Department is null or Department='0';
truncate table #3;
drop table #3;


-- delete - delete certain rows from table 
-- truncate - delte all rows from table but remain table structure
-- drop - delete hole table 