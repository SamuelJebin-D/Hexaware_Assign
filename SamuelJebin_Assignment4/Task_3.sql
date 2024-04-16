Use CMS

--14
SELECT e.employeeid, COUNT(c.courierid) AS total_courier
FROM employee e LEFT JOIN courier c 
ON e.employeeid = c.courierid
GROUP BY e.employeeid


--15
SELECT locationid, sum(amount) as TOTAL FROM payments 
GROUP BY locationid


--16
SELECT locationid, count(courierid) FROM payments 
GROUP BY locationid


--17
SELECT TOP 1 C.COURIERID, AVG(DATEDIFF(DAY,C.DELIVERYDATE, P.PAYMENTDATE)) AS AVERAGE_DEL_TIME
FROM Courier C, Payments P GROUP BY C.COURIERID ORDER BY AVERAGE_DEL_TIME DESC;


--18
SELECT locationId, sum(amount)AS TOTAL_AMOUNT from payments 
GROUP BY locationid HAVING TOTAL_AMOUNT > 20


--19
SELECT locationid, sum(amount) AS TOTAL FROM payments 
GROUP BY locationid


--20
SELECT courierid FROM payments WHERE locationid=33
GROUP BY courierid HAVING sum(amount) > 30


--21
SELECT courierid FROM payments where paymentdate='2024-01-14'
GROUP BY courierid HAVING SUM(amount)>1000


--22
SELECT courierid FROM payments where paymentdate='2024-01-01'
GROUP BY courierid HAVING SUM(amount)>5000
