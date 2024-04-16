use SISDB

--1

SELECT s.first_name, s.last_name, SUM(p.amount) AS total_payments
FROM Students s
INNER JOIN Payments p ON s.student_id = p.student_id
WHERE s.student_id = 3
GROUP BY s.first_name,s.last_name;

--2
select c.course_name , count(e.student_id) AS Student_count From Courses c
LEFT JOIN Enrollments e ON c.course_id =  e.course_id
GROUP BY c.course_name;

--3
SELECT Students.first_name, Students.last_name
FROM Students
LEFT JOIN Enrollments ON Students.student_id = Enrollments.student_id
WHERE Enrollments.student_id IS NULL;

--4
SELECT Students.first_name, Students.last_name, Courses.course_name
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
JOIN Courses ON Enrollments.course_id = Courses.course_id;

--5
SELECT Teacher.first_name, Teacher.last_name, Courses.course_name
FROM Teacher
JOIN Courses ON Teacher.teacher_id = Courses.teacher_id;

--6
SELECT Students.first_name, Students.last_name, Enrollments.enrollment_date
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
JOIN Courses ON Enrollments.course_id = Courses.course_id
WHERE Courses.course_name = 'SQL';

--7
SELECT Students.first_name, Students.last_name
FROM Students
LEFT JOIN Payments ON Students.student_id = Payments.student_id
WHERE Payments.student_id IS NULL;

--8
SELECT Courses.course_name
FROM Courses
LEFT JOIN Enrollments ON Courses.course_id = Enrollments.course_id
WHERE Enrollments.course_id IS NULL;

--9
SELECT Students.first_name, Students.last_name
FROM Students
JOIN Enrollments e1 ON Students.student_id = e1.student_id
JOIN Enrollments e2 ON e1.student_id = e2.student_id AND e1.course_id != e2.course_id;

--10
SELECT Teacher.first_name, Teacher.last_name
FROM Teacher
LEFT JOIN Courses ON Teacher.teacher_id = Courses.teacher_id
WHERE Courses.course_id IS NULL;
