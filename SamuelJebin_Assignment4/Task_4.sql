
--Task 4


--23
SELECT p.*, c.*
FROM Payments p
INNER JOIN Courier c ON p.CourierID = c.CourierID;

--24
SELECT p.*, l.*
FROM Payments p
INNER JOIN Location l ON p.LocationID = l.LocationID;

--25
SELECT p.*, c.*, l.*
FROM Payments p
INNER JOIN Courier c ON p.CourierID = c.CourierID
INNER JOIN Location l ON p.LocationID = l.LocationID;

--26
SELECT p.*, c.*
FROM Payments p
LEFT OUTER JOIN Courier c ON p.CourierID = c.CourierID;

--27
SELECT c.CourierID, SUM(p.Amount) AS TotalPayments
FROM Payments p
INNER JOIN Courier c ON p.CourierID = c.CourierID
GROUP BY c.CourierID;

--28
SELECT *
FROM Payments
WHERE PaymentDate = '2024-01-22';

--29
SELECT p.*, c.*
FROM Payments p
LEFT JOIN Courier c ON p.CourierID = c.CourierID;

--30
SELECT p.*, l.*
FROM Payments p
LEFT JOIN Location l ON p.LocationID = l.LocationID;

--31
SELECT c.CourierID, SUM(p.Amount) AS TotalPayments
FROM Payments p
LEFT JOIN Courier c ON p.CourierID = c.CourierID
GROUP BY c.CourierID;

--32
SELECT * from Payments
SELECT *
FROM Payments
WHERE PaymentDate BETWEEN '2024-01-01' AND '2024-01-30';

--33
SELECT * FROM users CROSS JOIN courierservices
SELECT u.*, courierid,c.status,c.courierid,c.trackingnumber, c.deliverydate
FROM users u LEFT JOIN courier c ON
u.name =c.sendername;

--34
SELECT * FROM employee CROSS JOIN courierservices

--35
SELECT * FROM employee CROSS JOIN payments
--36

SELECT * FROM users CROSS JOIN courierservices

--37
SELECT * FROM employee CROSS JOIN location

--38
SELECT *FROM courier LEFT JOIN users 
ON courier.sendername='John'

--39
SELECT *FROM courier LEFT JOIN users 
ON courier.sendername='Arun'

--43
SELECT * FROM courier WHERE sendername IN (SELECT sendername FROM courier 
GROUP BY sendername HAVING count(*)>1)

--44
SELECT e1.*,e2.* FROM employee e1, employee e2 WHERE e1.role=e2.role
AND e1.employeeid<> e2.employeeid 

--45
SELECT * FROM payments p1 INNER JOIN payments p2 ON
p1.locationid=p2.locationid AND p1.paymentid <>p2.paymentid

--46
SELECT * FROM courier c1 INNER JOIN courier c2 
ON c1.senderaddress = c2.senderaddress and c1.courierid<>c2.courierid