use TechShop
--1
Select CONCAT(firstname, ' ' ,lastname) as Names, email from Customers

--2
SELECT 
    OrderID,
    OrderDate,
    (SELECT CONCAT(FirstName, ' ', LastName) FROM Customers WHERE Customers.CustomerID = Orders.CustomerID) AS CustomerName
FROM 
    Orders;

--3
INSERT INTO Customers VALUES (11,'John','Marston','Marstron.john@gmail.com',9787722703,'76-B BlackWaters')
select * from Customers

--4
UPDATE Products
SET Price = Price * 1.10

--5
DECLARE @ToDelete INT;
SET @ToDelete = 106;
DELETE FROM OrderDetails
WHERE OrderID = @ToDelete;

DELETE FROM Orders
WHERE OrderID = @ToDelete;

--6
INSERT INTO Orders VALUES (7,8,'2023-08-19',40000)
Select * from Orders

--7
select* from customers
DECLARE @IDToUpdate INT;
DECLARE @NewEmail VARCHAR(255);
DECLARE @NewAddress VARCHAR(255);

SET @IDToUpdate = 10;
SET @NewEmail = 'Alice@xmail.com';
SET @NewAddress = '23/11 Street';

UPDATE Customers
SET Email = @NewEmail,
    Address = @NewAddress
WHERE CustomerID = @IDToUpdate;

--8
UPDATE Orders SET TotalAmount = (
    SELECT SUM(OrderDetails.Quantity * Products.Price)
    FROM OrderDetails, Products
    WHERE OrderDetails.ProductID = Products.ProductID
    AND OrderDetails.OrderID = Orders.OrderID
)

--9
DECLARE @IDToDelete INT;
SET @IDToDelete = 9;

DELETE FROM OrderDetails
WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID = @IDToDelete);

DELETE FROM Orders
WHERE CustomerID = @IDToDelete;

--10
INSERT INTO Products VALUES (1006,'Monitor','4K Ultra HD 244hz',32000)
Select * from Products

--11
DECLARE @OrderIDToUpdate INT;
DECLARE @NewStatus NVARCHAR(50);

SET @OrderIDToUpdate = <user_input_order_id>;
SET @NewStatus = '<user_input_new_status>';

UPDATE Orders
SET Status = @NewStatus
WHERE OrderID = @OrderIDToUpdate;

--12
ALTER TABLE Customers
ADD NumOrders INT;
UPDATE Customers
SET NumOrders = (
    SELECT COUNT(*)
    FROM Orders
    WHERE Orders.CustomerID = Customers.CustomerID
);

select * from customers

