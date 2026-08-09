select * from students;


select * from Students
--Row_Number -> In case of a tie row numbers are assigned randomly
select *,ROW_NUMBER() over(order by marks desc) as Row_Number
from Students

--Rank -> if there's a tie next rank/ranks will be skipped
select *,rank() over(order by marks desc) as Rank_Function
from Students

--Dense_Rank -> if there's a tie ranks will not be skipped
select *,DENSE_RANK() over(order by marks desc) as Dense_Rank
from Students

-----------------------------


select * from Students
--Row_Number -> In case of a tie row numbers are assigned randomly
select *,ROW_NUMBER() over(order by marks desc) as Row_Number
from Students

--Rank -> if there's a tie next rank/ranks will be skipped
select *,rank() over(order by marks desc) as Rank_Function
from Students

--Dense_Rank -> if there's a tie ranks will not be skipped
select *,DENSE_RANK() over(order by marks desc) as Dense_Rank
from Students

-----------------------------------------

