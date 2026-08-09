
--Copying Data From existing table to the New table

--Case 1 : The New table simply doesn't exist
--Case 2: The New table structure/New Table exists

--CASE 1 :
select * from saless 

--All columns were copied from existing table
--This statement will result in the creation of New_Table_1 which will be having structure & records both
--same as that of saless table
select * into New_Table_1 from saless

-------------------Certain Columns to be copied
drop table New_Table_1

select productid,quantity into new_table_1 from saless

select * from new_table_1


--CASE 2 : New table structure/table already exists

select top 0 * into new_table_2 from saless  --****************************

select * from new_table_2

insert into new_table_2 select * from saless 

------Copying Certain Columns

select * into new_table_3 from saless where 1=0  ---****************************

select * from new_table_3

insert into new_table_3 (ProductID,SaleDate) select productid,saledate from saless

