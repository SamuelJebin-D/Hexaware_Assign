create Database CMS
use cms

select * from Users
select * from courier
select * from employee
select * from payments

create table Users (
Name VARCHAR(255),
Email VARCHAR(255),
Password VARCHAR(255),
ContactNumber VARCHAR(255),
Address TEXT
);

Create table Courier(
CourierID INT PRIMARY KEY,
SenderName VARCHAR(255),
SenderAddress TEXT,
ReceiverName VARCHAR(255),
ReceiverAddress TEXT,
Weight DECIMAL(5,2),
Status VARCHAR(50),
TrackingNumber VARCHAR(20) UNIQUE,
DeliveryDate date
);

create table CourierServices(
ServiceID INT PRIMARY KEY,
ServiceName VARCHAR(100),
Cost DECIMAL(8,2)
);

create table Employee(
EmployeeID INT PRIMARY KEY,
Name VARCHAR(255),
Email VARCHAR(255) UNIQUE,
ContactNumber VARCHAR(20),
Role VARCHAR(50),
Salary DECIMAL (10,2)
);

create table Location(
LocationID INT PRIMARY KEY,
LocationName VARCHAR(100),
Address TEXT
);

create table Payments(
PaymentID INT PRIMARY KEY,
CourierID INT FOREIGN KEY references  Courier(CourierID),
LocationID INT FOREIGN KEY references Location(LocationID),
Amount DECIMAL (10,2),
PaymentDate DATE
);