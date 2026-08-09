select * from saless;
select paymentmethod,sum(totalamount) as Total_amount from saless 
group by PaymentMethod;
select productid,paymentmethod,sum(totalamount) as total_amount from saless
group by productid,paymentmethod
order by productid;