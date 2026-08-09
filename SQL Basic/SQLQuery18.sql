select * from saless;
select min(TotalAmount) as mintotalamount from saless;
select min(saledate) as minsales_date from saless;
select min(paymentmethod) as minpay from saless;
--Manimum Quantity sold for each productID
select productid,min(quantity) as minquantity from saless
group by productid;

--Manimum Total Amount for all distinct dates in saledate column
select saledate,min(totalamount) as mintotalam from saless
group by saledate;