
--1
insert into Students values(11,'John','Doe','1995-08-15','john.doe@example.com','1234567890')

--2
insert into Enrollments values(11,11,4,'2024-03-15')

--3
Update Teacher
SET email = 'arjun.sharma@gmail.com'
WHERE teacher_id = 104;

--4
DELETE FROM Enrollments
WHERE student_id = 3 AND course_id = 1;

--5
UPDATE Courses
SET teacher_id=102
WHERE course_id = 3;

--6(Not sure)
DELETE from Students AND enrollments
WHERE student_id =11l

--7
UPDATE Payments
SET amount = 31250
WHERE payment_id = 1009;