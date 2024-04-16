create database TicketBookingSystem

Use TicketBookingSystem

select * from event

Create table Venu(
venue_id INT PRIMARY KEY,
venue_name VARCHAR(50),
address TEXT
)

create table Event(
event_id INT PRIMARY KEY,
event_name VARCHAR(50),
event_date date,
event_time time,
venue_id INT FOREIGN KEY references Venu(venue_id),
total_seats INT,
availabe_seats INT,
ticket_price DECIMAL(5,2),
event_type VARCHAR(10),
booking_id INT
);



create table Customer(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
email VARCHAR(50),
phone_number VARCHAR(20),
booking_id INT
);

create table Booking(
booking_id INT PRIMARY KEY,
customer_id INT FOREIGN KEY references Customer(customer_id),
event_id INT FOREIGN KEY references Event(event_id),
num_tickets INT,
total_cost INT,
booking_date DATE
);

ALTER TABLE customer ADD FOREIGN KEY (booking_id) references Booking(booking_id);

ALTER TABLE Event ADD FOREIGN KEY (booking_id) references Booking(booking_id);