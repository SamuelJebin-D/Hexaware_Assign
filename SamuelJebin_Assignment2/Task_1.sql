create database SISDB
use SISDB

select * from Students
select * from Teacher
select * from Courses
select * from Enrollments
select * from Payments


create table Students(
student_id int PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
date_of_birth date,
email VARCHAR(50),
phone_number VARCHAR(15)
)

create table Teacher(
teacher_id INT PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
email VARCHAR(50)
)

create table Courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(25),
credits INT,
teacher_id INT FOREIGN KEY References Teacher(teacher_id) 
)

create table Enrollments(
enrollment_id INT PRIMARY KEY,
student_id  INT FOREIGN KEY references Students(student_id),
course_id INT FOREIGN KEY references Courses(course_id),
enrollment_date date
)

create table Payments (
payment_id INT PRIMARY KEY,
student_id  INT FOREIGN KEY references Students(student_id),
amount INT,
payment_date date
)