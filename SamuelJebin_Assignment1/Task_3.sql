--1
SELECT Orders.OrderID, Customers.FirstName, Customers.LastName, Customers.Email, Customers.Phone
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--2
SELECT Products.ProductName, SUM(OrderDetails.Quantity * Products.Price) AS TotalRevenue
FROM OrderDetails
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Products.Category = 'Electronic Gadgets'
GROUP BY Products.ProductName;

--3
SELECT DISTINCT Customers.FirstName, Customers.LastName, Customers.Email, Customers.Phone
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--4
SELECT TOP 1 Products.ProductName, SUM(OrderDetails.Quantity) AS TotalQuantityOrdered
FROM OrderDetails
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Products.Category = 'Electronic Gadgets'
GROUP BY Products.ProductName
ORDER BY TotalQuantityOrdered DESC;

--5
SELECT Products.ProductName, Products.Category
FROM Products
WHERE Products.Category = 'Electronic Gadgets';

--6
SELECT Customers.FirstName, Customers.LastName, AVG(Orders.TotalAmount) AS AverageOrderValue
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.FirstName, Customers.LastName;

--7
SELECT TOP 1 Orders.OrderID, Customers.FirstName, Customers.LastName, SUM(OrderDetails.Quantity * Products.Price) AS TotalRevenue
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Orders.OrderID, Customers.FirstName, Customers.LastName
ORDER BY TotalRevenue DESC;

--8
SELECT Products.ProductName, SUM(OrderDetails.Quantity) AS TotalOrders
FROM OrderDetails
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Products.Category = 'Electronic Gadgets'
GROUP BY Products.ProductName;

--9
SELECT Customers.FirstName, Customers.LastName, Customers.Email, Customers.Phone
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Products.ProductName = 'HeadPhone';

--10
SELECT SUM(Orders.TotalAmount) AS TotalRevenue
FROM Orders
WHERE Orders.OrderDate BETWEEN '2023-07-20' AND '2024-02-22';
