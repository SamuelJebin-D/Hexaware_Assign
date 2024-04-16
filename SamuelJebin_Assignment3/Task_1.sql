create database HMBank 
use HMBank

select * from customers
select * from Accounts
select * from Transactions

create table Customers (
	Customer_id INT PRIMARY KEY,
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	DOB date,
	email VARCHAR(50),
	phone_number VARCHAR(30)
)

Alter table customers add address Varchar(20);

create table Accounts(
account_id INT PRIMARY KEY,
customer_id INT FOREIGN KEY references  Customers(customer_id),
account_type VARCHAR(50),
balance INT
)

create table Transactions(
transaction_id INT PRIMARY KEY,
account_id INT FOREIGN KEY references Accounts(account_id),
transaction_type VARCHAR(30),
amount INT,
transaction_date date
)