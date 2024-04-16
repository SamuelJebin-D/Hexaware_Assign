
--1
INSERT INTO Venu VALUES(101,'VKS Mahal','79/93 Gandhi street')

--2
SELECT * FROM Event;

--3
SELECT * FROM Event WHERE available_seats > 0;

--4
SELECT * FROM Event WHERE event_name LIKE '%cup%';

--5
SELECT * FROM Event WHERE ticket_price BETWEEN 1000 AND 2500;

--6
SELECT * FROM Event WHERE event_date BETWEEN '2024-04-20' AND '2024-04-30';

--7
SELECT * FROM Event WHERE available_seats > 0 AND event_name LIKE '%Concert%';

--8
SELECT TOP 5 * FROM Customer WHERE customer_id NOT IN (SELECT TOP 5 customer_id FROM Customer);

--9
SELECT * FROM Booking WHERE num_tickets > 4;

--10
SELECT * FROM Customer WHERE phone_number LIKE '%000';

--11
SELECT * FROM Event WHERE total_seats > 15000 ORDER BY total_seats;

--12
SELECT * FROM Event WHERE event_name NOT LIKE 'x%' AND event_name NOT LIKE 'y%' AND event_name NOT LIKE 'z%';
