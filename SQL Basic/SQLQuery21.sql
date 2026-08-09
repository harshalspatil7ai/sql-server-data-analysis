select * from saless;
select Productid,
sum(quantity) as total_Quantity,
sum(Totalamount) as Total_amount,
avg(quantity) as avg_quantity,
avg(totalamount) as Avg_total_amount
from saless
group by productid
order by productid

select * from saless;
select Productid,
sum(quantity) as total_Quantity,
sum(Totalamount) as Total_amount,
avg(quantity) as avg_quantity,
avg(totalamount) as Avg_total_amount
from saless
group by productid
having sum(quantity)<30 and sum(Totalamount) = 630
order by productid;