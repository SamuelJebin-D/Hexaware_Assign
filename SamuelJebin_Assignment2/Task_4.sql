--1
SELECT AVG(StudentCount) AS AvgStudentsPerCourse
FROM (SELECT COUNT(*) AS StudentCount FROM Enrollments GROUP BY course_id) AS Subquery;

--2
SELECT student_id
FROM Payments
WHERE amount = (SELECT MAX(amount) FROM Payments);

--3
SELECT course_id
FROM Enrollments
GROUP BY course_id
HAVING COUNT(*) = (SELECT MAX(EnrollmentCount) FROM (SELECT COUNT(*) AS EnrollmentCount FROM Enrollments GROUP BY course_id) AS Subquery);

--4
SELECT teacher_id, SUM(amount) AS TotalPayments
FROM Payments
JOIN Enrollments ON Payments.student_id = Enrollments.student_id
JOIN Courses ON Enrollments.course_id = Courses.course_id
GROUP BY teacher_id;

--5
SELECT student_id
FROM Enrollments
GROUP BY student_id
HAVING COUNT(DISTINCT course_id) = (SELECT COUNT(*) FROM Courses);

--6
SELECT first_name, last_name
FROM Teacher
WHERE teacher_id NOT IN (SELECT DISTINCT teacher_id FROM Courses);


--7
SELECT AVG(Age) AS AverageAge
FROM (SELECT DATEDIFF(YEAR, date_of_birth, GETDATE()) AS Age FROM Students) AS Subquery;

--8
SELECT course_id
FROM Courses
WHERE course_id NOT IN (SELECT DISTINCT course_id FROM Enrollments);


--10
SELECT student_id
FROM Payments
GROUP BY student_id
HAVING COUNT(*) > 1;

--11
SELECT student_id, SUM(amount) AS TotalPayments
FROM Payments
GROUP BY student_id;

--12
SELECT Courses.course_name, COUNT(Enrollments.student_id) AS EnrollmentCount
FROM Courses
LEFT JOIN Enrollments ON Courses.course_id = Enrollments.course_id
GROUP BY Courses.course_name;

--13
SELECT AVG(amount) AS AveragePaymentAmount
FROM Payments;

