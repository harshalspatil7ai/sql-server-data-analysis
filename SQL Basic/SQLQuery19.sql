select * from saless;
select sum(quantity) as total_Quantity from saless;
select sum(totalAmount) as Total_amount from saless;
select sum(quantity) as Total_Quantity,sum (totalAmount) as Total_amount from saless;
select avg(quantity) as Avg_quantity from saless;
select avg(totalamount) as Avg_total_amount from saless;
select avg(quantity) as avg_quantity,avg(totalamount) as Avg_totalamount from saless;
select productid,sum(quantity) as Total_quantity ,sum(totalamount) as Total_amount from saless group by productid;
select productid,storeid,
sum(quantity) as sum_quantity,
sum(totalamount) as Sum_totalamount
from saless
group by productid,storeid;
select productid,customerid,
sum(quantity) as sum_quantity,
sum(totalamount) as Sum_totalamount,
avg(quantity) as avg_sum_quantity,
avg(totalamount) as avg_Sum_totalamount
from saless
group by productid,customerid;


select Count(*) as No_of_rows from saless; -- calculate all rows
select count(paymentmethod) as No_of_records from saless;  -- dont calculate null rows
select count(distinct ProductID) as dist_prodid from saless;-- how many different ids
select paymentmethod,count(distinct paymentmethod) as dist_payment from saless group by PaymentMethod;-- calculate null as o dist
select paymentmethod,count(paymentmethod) as dist_payment from saless group by PaymentMethod; -- how many times but null as 0
select paymentmethod,count(*) as dist_payment from saless group by PaymentMethod;  -- calculate all how many time with null
select * from saless;

