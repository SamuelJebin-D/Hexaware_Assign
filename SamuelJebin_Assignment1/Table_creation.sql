create database TechShop;
use TechShop

select * from Customers;
select * from Products;
select * from Orders;
select * from OrderDetails;
select * from Inventory;

create table Customers (
CustomerID int PRIMARY KEY,
FirstName varchar(25),
LastName varchar(25),
Email varchar(25) UNIQUE,
phone varchar(20) UNIQUE ,
Address varchar(50));

create table Products(
ProductID int PRIMARY KEY,
ProductName varchar(50),
Description varchar(100),
Price int);

create table Orders(
OrderID int PRIMARY KEY,
CustomerID int FOREIGN KEY references customers(CustomerID),
OrderDate date,
TotalAmount int);

create table OrderDetails(
OrderDetailID int PRIMARY KEY,
OrderID int FOREIGN KEY references Orders(OrderID),
ProductID int FOREIGN KEY references Products(ProductID),
Quantity int )

create table Inventory(
InventoryID int PRIMARY KEY,
ProductID int FOREIGN KEY references Products(ProductID),
QuantityInStock int,
LastStockUpdate date)

alter table customers add  UNIQUE (phone);