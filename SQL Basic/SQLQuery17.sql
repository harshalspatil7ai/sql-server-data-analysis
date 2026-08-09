select * from saless;
select max(TotalAmount) as maxtotalamount from saless;
select max(saledate) as maxsales_date from saless;
select max(paymentmethod) as maxpay from saless;
--Maximum Quantity sold for each productID
select productid,max(quantity) as maxquantity from saless
group by productid;

--Maximum Total Amount for all distinct dates in saledate column
select saledate,max(totalamount) as maxtotalam from saless
group by saledate;