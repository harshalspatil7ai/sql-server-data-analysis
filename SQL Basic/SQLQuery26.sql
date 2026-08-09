-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(50),
    Rating DECIMAL(3, 1)
);

-- Insert data into the Products table
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity, Supplier, Rating) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 150, 'Tech Supplies', 4.5),
(2, 'Office Chair', 'Furniture', 120.00, 85, 'Comfort Co', 4.7),
(3, 'Water Bottle', 'Accessories', 15.00, 250, 'AquaGear', 4.3),
(4, 'Laptop Backpack', 'Accessories', 45.99, 200, 'GearUp', 4.6),
(5, 'Gaming Laptop', 'Electronics', 999.99, 45, 'Tech Supplies', 4.8),
(6, 'Desk Lamp', 'Furniture', 35.00, 120, 'LightHouse', 4.2),
(7, 'Bluetooth Speaker', 'Electronics', 59.99, 95, 'SoundWave', 4.4),
(8, 'Standing Desk', 'Furniture', 250.00, 50, 'Comfort Co', 4.9),
(9, 'Fitness Tracker', 'Electronics', 129.99, 180, 'FitTech', 4.7),
(10, 'Coffee Mug', 'Accessories', 9.99, 300, 'MugMasters', 4.1);


select * from Products


--Example1 : Add a column to categorize each product into categories high, medium & low
select *,
case
     when price>=200 then 'High'
     when price<200 and Price>=100 then 'Medium'
     else 'Low'
end as 'H/M/L/'
from products;

--Example2 : Provide priority to each category & sort the data according to that priority

select * from products
order by
case  
     when Category in ('Electronics') then 1
	when Category in ('Furniture') then 2
	else 3
end

--Group data based on column category and price into primium And Affordable
select * ,
case 
    when category='Electronics' then 
    case when price>=300 then 'Primium Electronics'
    else 'Affordable Electronics'
    end
     
    when category='Furniture' then 
    case when price>=250 then 'Primium furniture'
    else 'Affordable furniture'
    end
else  
      case when price>=25 then 'Primium Accessories'
    else 'Affordable Accessories'
    end
end as 'Group Category'
from products;

