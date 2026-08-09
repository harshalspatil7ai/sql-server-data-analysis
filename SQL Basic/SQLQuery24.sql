/*Number of columns must be the same.
2	Data types must be compatible.
3	Column names are taken from the first SELECT.
4	ORDER BY can be used only once, at the end.
5	UNION removes duplicate rows.
6	UNION ALL keeps duplicate rows.
7	Columns should represent the same type of data in the same order.*/

create table append1 (C1 int,C2 nvarchar(255),C3 int)
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)



create table append2 (C1 int,C2 nvarchar(255),C3 int)
insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)

select * from append1;
select * from append2;



select * from append1
union all
select * from append2;


select * from append1
union
select * from append2;

