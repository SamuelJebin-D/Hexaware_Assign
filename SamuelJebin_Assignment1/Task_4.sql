--1
SELECT FirstName, LastName
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

--2
SELECT COUNT(*) AS TotalProducts
FROM Products;

--3
SELECT SUM(TotalAmount) AS TotalRevenue
FROM Orders;

--4
DECLARE @CategoryName NVARCHAR(255);
SET @CategoryName = 'Electronic';

SELECT AVG(Quantity) AS AverageQuantityOrdered
FROM OrderDetails
WHERE ProductID IN (SELECT ProductID FROM Products WHERE Category = @CategoryName);

--5
DECLARE @CustomerID INT;
SET @CustomerID = 10;
SELECT SUM(TotalAmount) AS TotalRevenue
FROM Orders
WHERE CustomerID = @CustomerID;

--6
SELECT TOP 1 FirstName, LastName, COUNT(*) AS OrderCount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY FirstName, LastName
ORDER BY OrderCount DESC;

--8
SELECT TOP 1 FirstName, LastName, SUM(TotalAmount) AS TotalSpending
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Products.Category = 'Electronic Gadgets'
GROUP BY FirstName, LastName
ORDER BY TotalSpending DESC;

--9
SELECT AVG(TotalAmount) AS AverageOrderValue
FROM Orders;

--10
SELECT FirstName, LastName, COUNT(*) AS OrderCount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY FirstName, LastName;




