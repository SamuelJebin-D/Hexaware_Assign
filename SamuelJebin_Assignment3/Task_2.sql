use HMBank
--1
SELECT first_name, last_name, email, account_type
FROM Customers
JOIN Accounts ON Customers.customer_id = Accounts.customer_id;

--2
SELECT c.first_name, c.last_name, t.*
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
JOIN Customers c ON a.customer_id = c.customer_id;

--3
UPDATE Accounts
SET balance = balance + 200
WHERE account_id = 1;

--4
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM Customers;

--5
DELETE FROM Accounts
WHERE balance = 0 AND account_type = 'Savings';

--6
SELECT *
FROM Customers
WHERE address LIKE '%Hello street%';

--7
SELECT balance
FROM Accounts
WHERE account_id = 102;

--8
SELECT *
FROM Accounts
WHERE account_type = 'Current' AND balance > 1000;

--9
SELECT *
FROM Transactions
WHERE account_id = 103;

--10
SELECT account_id, balance * 0.03 AS interest_accrued
FROM Accounts
WHERE account_type = 'Savings';

--11
SELECT *
FROM Accounts
WHERE balance < 0;

--12
SELECT *
FROM Customers
WHERE address NOT LIKE '%Hello%';


