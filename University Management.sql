CREATE DATABASE university_db;
USE University_db;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    dob DATE
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE Course_Instructor (
    ci_id INT PRIMARY KEY,
    course_id INT,
    instructor_id INT,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students VALUES
(1, 'Rahul', 'rahul@email.com', '2003-05-10'),
(2, 'Aman', 'aman@email.com', '2002-08-15'),
(3, 'Sara', 'sara@email.com', '2004-01-20');

INSERT INTO Courses VALUES
(101, 'Database Systems', 4),
(102, 'Mathematics', 3),
(103, 'Computer Networks', 4);

INSERT INTO Instructors VALUES
(1, 'Dr. Smith', 'smith@email.com', 'Computer Science'),
(2, 'Dr. John', 'john@email.com', 'Mathematics');

INSERT INTO Course_Instructor VALUES
(1, 101, 1),
(2, 102, 2),
(3, 103, 1);

INSERT INTO Enrollments VALUES
(1, 1, 101, '2025-01-10', 'A'),
(2, 2, 102, '2025-01-11', 'B'),
(3, 3, 101, '2025-01-12', 'A'),
(4, 1, 103, '2025-01-15', 'B');

INSERT INTO Students (student_id, name, email, dob)
VALUES (4, 'Ali', 'ali@email.com', '2003-11-05');

SELECT * FROM Students;

SELECT name, email FROM Students;

SELECT * FROM Students
WHERE dob > '2003-01-01';


UPDATE Students
SET email = 'newemail@email.com'
WHERE student_id = 1;

DELETE FROM Students
WHERE student_id = 4;

SELECT s.name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

SELECT c.course_name, i.name
FROM Courses c
JOIN Course_Instructor ci ON c.course_id = ci.course_id
JOIN Instructors i ON ci.instructor_id = i.instructor_id;


SELECT course_id, COUNT(student_id) AS total_students
FROM Enrollments
GROUP BY course_id;

SELECT AVG(credits) AS avg_credits
FROM Courses;

SELECT * FROM Students
ORDER BY name ASC;

SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM Courses c
JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;
