use HMBank
--1
SELECT AVG(balance) AS average_balance
FROM Accounts;

--2
SELECT TOP 10 *
FROM Accounts
ORDER BY balance DESC;

--3
SELECT SUM(amount) AS total_deposits
FROM Transactions
WHERE transaction_type = 'Deposit' AND CAST(transaction_date AS DATE) = '2024-04-01';

--4
SELECT TOP 1 *
FROM Customers
ORDER BY DOB ASC;

--5
SELECT t.*, a.account_type
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id;

--6
SELECT c.*, a.*
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id;

--7
SELECT t.*, c.*
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
JOIN Customers c ON a.customer_id = c.customer_id
WHERE a.account_id = 101;

--8
SELECT customer_id, COUNT(*) AS num_accounts
FROM Accounts
GROUP BY customer_id
HAVING COUNT(*) > 0;

--9
SELECT account_id, SUM(CASE WHEN transaction_type = 'Deposit' THEN amount ELSE -amount END) AS transaction_amount
FROM Transactions
GROUP BY account_id;

--10
SELECT account_id, AVG(balance) AS balance
FROM Accounts
GROUP BY account_id;

--11
SELECT account_type, SUM(balance) AS total_balance
FROM Accounts
GROUP BY account_type;

--12
SELECT account_id, COUNT(*) AS num_transactions
FROM Transactions
GROUP BY account_id
ORDER BY num_transactions DESC;

--13
SELECT c.customer_id, c.first_name, c.last_name, a.account_type, SUM(a.balance) AS total_balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, a.account_type
ORDER BY total_balance DESC;

