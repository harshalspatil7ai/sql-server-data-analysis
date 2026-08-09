SELECT * FROM Customers;

SELECT * FROM Orders;

SELECT * FROM Products;

--1) Identify pairs of customers who live in the same country.
SELECT x.CustomerName, y.CustomerName
FROM Customers x
JOIN Customers y
ON x.Country = y.Country
AND x.CustomerID < y.CustomerID;


--2) Find the customer who has spent the most on their orders.
SELECT CustomerName, [Amount Spent]
FROM
(
    SELECT CustomerName,
           SUM(Price) AS [Amount Spent],
           DENSE_RANK() OVER(ORDER BY SUM(Price) DESC) AS DR
    FROM Customers c
    INNER JOIN Orders o
        ON c.CustomerID = o.CustomerID
    INNER JOIN Products p
        ON o.ProductID = p.ProductID
    GROUP BY CustomerName
) m
WHERE DR = 1;


--3) Find customers who have ordered more than one type of products.
SELECT CustomerName
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY CustomerName
HAVING COUNT(DISTINCT ProductID) > 1;


--4) List all products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered.
SELECT OrderID,
       p.ProductID,
       ProductName
FROM Orders o
RIGHT JOIN Products p
ON o.ProductID = p.ProductID;


--5) Retrieve all orders placed by customers from the USA.
SELECT OrderID
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE Country = 'USA';


--6) Find the names of customers who have ordered a product priced above $500.
SELECT DISTINCT CustomerName
FROM Customers c
INNER JOIN Orders o
ON o.CustomerID = c.CustomerID
INNER JOIN Products p
ON p.ProductID = o.ProductID
WHERE Price > 500;


--7) Find customers who have ordered the same product more than once.
SELECT DISTINCT m.CustomerName
FROM
(
    SELECT CustomerName,
           ProductID,
           COUNT(OrderID) AS [Count]
    FROM Customers c
    INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID
    GROUP BY CustomerName, ProductID
    HAVING COUNT(OrderID) > 1
) m;