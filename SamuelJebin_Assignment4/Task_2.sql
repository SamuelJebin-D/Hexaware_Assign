use CMS

--1
SELECT * FROM Users;

--2
SELECT * FROM Courier WHERE SenderName = 'Arun Vijay' OR ReceiverName = 'Sam';

--3
SELECT * FROM Courier;

--4
SELECT * FROM Courier WHERE CourierID = 103;

--5
SELECT * FROM Courier WHERE  Status = 'Delivered';

--6
SELECT * FROM Courier WHERE Status != 'Delivered';

--7
SELECT * FROM Courier WHERE DeliveryDate = GETDATE();

--8
SELECT * FROM Courier WHERE Status = 'Delivered';

--9
SELECT CourierID, COUNT(*) AS TotalPackages FROM Courier GROUP BY CourierID;

--10
SELECT CourierID, AVG(DATEDIFF(day, DeliveryDate, GETDATE())) AS AverageDeliveryTime 
FROM Courier 
GROUP BY CourierID;

--11
SELECT * FROM Courier WHERE Weight BETWEEN 1 AND 2.5;

--12
SELECT * FROM Employee WHERE Name LIKE '%John%';

--13
SELECT * FROM Courier, Payments
WHERE Courier.CourierID = Payments.CourierID 
AND Payments.Amount > 50;
