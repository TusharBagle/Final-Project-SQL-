-- for Table Creation the flow should be (Given follow) :
-- 1. Students , 2. Departments , 3. Courses , 4. Instructors , 5. Enrollments

-- for Update the Records the flow should be (Given follow) :
-- 1. Students , 2. Courses , 3. Instructors , 4. Enrollments , 5. Department !...


CREATE DATABASE tushar ;
USE tushar ;

-- ---------------------------------------------------------------------------------------------------


-- Create the Table
CREATE TABLE Students (
	Student_ID  INT  PRIMARY KEY ,
    First_Name  VARCHAR(255) ,
    Last_Name  VARCHAR(255) ,
    Email  VARCHAR(255) ,
    Birth_Date  DATE ,
    Enrollment_Date  DATE 
) ;


-- Inserting the values into Table
INSERT INTO Students (Student_ID , First_Name , Last_Name , Email , Birth_Date , Enrollment_Date)
VALUES
	(1 , 'John' , 'Deo' , 'john.deo@gmail.com' , '2000-01-15' , '2022-08-01') ,
    (2 , 'Jane' , 'Smith' , 'jane.smith@gmail.com' , '2001-10-05' , '2023-01-11') ,
	(3 , 'Tushar' , 'Bagle' , 'tushar.bagle@gmail.com' , '2002-05-14' , '2024-05-21') ,
    (4 , 'Kanish' , 'Rajput' , 'kanish.rajput@gmail.com' , '2002-01-09' , '2024-01-21') ,
	(5 , 'Harshit' , 'Dhara' , 'harshit.dhara@gmail.com' , '2001-04-19' , '2023-04-10') ,
	(6 , 'Nitin' , 'Singh' , 'nitin.singh@gmail.com' , '2000-07-11' , '2022-08-23') ;


-- Retrieve All the data from Table 
SELECT * FROM Students ;


-- The "OUTPUT"

-- +-------------+------------+-----------+-------------------------+------------+------------------+
-- | Student_ID  | First_Name | Last_Name | Email                   | Birth_Date | Enrollment_Date  |
-- +-------------+------------+-----------+-------------------------+------------+------------------+
-- | 1           | John       | Deo       | john.deo@gmail.com      | 2000-01-15 | 2022-08-01       |
-- | 2           | Jane       | Smith     | jane.smith@gmail.com    | 2001-10-05 | 2023-01-11       |
-- | 3           | Tushar     | Bagle     | tushar.bagle@gmail.com  | 2002-05-14 | 2024-05-21       |
-- | 4           | Kanish     | Rajput    | kanish.rajput@gmail.com | 2002-01-09 | 2024-01-21       |
-- | 5           | Harshit    | Dhara     | harshit.dhara@gmail.com | 2001-04-19 | 2023-04-10       |
-- | 6           | Nitin      | Singh     | nitin.singh@gmail.com   | 2000-07-11 | 2022-08-23       |
-- +-------------+------------+-----------+-------------------------+------------+------------------+


-- ---------------------------------------------------------------------------------------------------


-- Create the Table
CREATE TABLE Courses (
	Course_ID  INT  PRIMARY KEY ,
    Course_Name  VARCHAR(255) ,
    Department_ID  INT ,
    Credits  INT ,
    
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
) ;


-- Inserting the values into Table
INSERT INTO Courses (Course_ID , Course_Name , Department_ID , Credits)
VALUES
	(101 , 'Introduction to SQL' , 1 , 2) ,
	(102 , 'Data Stucture' , 2 , 4) ,
	(103 , 'Introduction to SQL & Data Stucture' , 3 , 6) ,
	(104 , 'Introduction to Machine Learning' , 4 , 8) ,
	(105 , 'Introduction to Deep Learning' , 5 , 10) ,
	(106 , 'Introduction to LLM' , 6 , 12) ;


-- Retrieve All the data from Table 
SELECT * FROM Courses ;


-- The "OUTPUT"

-- +-----------+------------------------------------------+---------------+---------+
-- | Course_ID | Course_Name                              | Department_ID | Credits |
-- +-----------+------------------------------------------+---------------+---------+
-- | 101       | Introduction to SQL                      | 1             | 2       |
-- | 102       | Data Stucture                            | 2             | 4       |
-- | 103       | Introduction to SQL & Data Stucture      | 3             | 6       |
-- | 104       | Introduction to Machine Learning         | 4             | 8       |
-- | 105       | Introduction to Deep Learning            | 5             | 10      |
-- | 106       | Introduction to LLM                      | 6             | 12      |
-- +-----------+------------------------------------------+---------------+---------+


-- ---------------------------------------------------------------------------------------------------


-- Create the Table
CREATE TABLE Instructors (
	Instructors_ID  INT  PRIMARY KEY ,
    First_Name  VARCHAR(255) ,
    Last_Name  VARCHAR(255) ,
    Email  VARCHAR(255) ,
    Department_ID  INT ,
    
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
) ;


-- Inserting values into the Table 
INSERT INTO Instructors (Instructors_ID , First_Name , Last_Name , Email , Department_ID) 
VALUES
	(1 , 'Alice' , 'Johnson' , 'alice.johnson@gmail.com' , 1 ) ,
	(2 , 'Bob' , 'Lee' , 'bob.lee@gmail.com' , 2 ) ,
	(3 , 'Tushar' , 'Bagle' , 'tushar.bagle@gmail.com' , 3 ) ,
	(4 , 'Jayesh' , 'Patil' , 'jayesh.patil@gmail.com' , 4 ) ,
	(5 , 'Bhavesh' , 'Kamble' , 'bhavesh.kamble@gmail.com' , 5 ) ,
	(6 , 'Yash' , 'Vasaikar' , 'yash.Vasaikar@gmail.com' , 6 ) ;


-- Retrieve all the data from Table 
SELECT * FROM Instructors ;




-- The "OUTPUT"

-- +----------------+------------+-----------+---------------------------+---------------+
-- | Instructors_ID | First_Name | Last_Name | Email                     | Department_ID |
-- +----------------+------------+-----------+---------------------------+---------------+
-- | 1              | Alice      | Johnson   | alice.johnson@gmail.com   | 1             |
-- | 2              | Bob        | Lee       | bob.lee@gmail.com         | 2             |
-- | 3              | Tushar     | Bagle     | tushar.bagle@gmail.com    | 3             |
-- | 4              | Jayesh     | Patil     | jayesh.patil@gmail.com    | 4             |
-- | 5              | Bhavesh    | Kamble    | bhavesh.kamble@gmail.com  | 5             |
-- | 6              | Yash       | Vasaikar  | yash.Vasaikar@gmail.com   | 6             |
-- +----------------+------------+-----------+---------------------------+---------------+


-- ---------------------------------------------------------------------------------------------------


-- Create the Table
CREATE TABLE Enrollments (
	Enrollment_ID  INT  PRIMARY KEY ,
    Student_ID  INT(11) ,
    Course_ID  INT(11) ,
    Enrollment_Date  DATE ,
    
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID) ,
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID) 
) ;


-- Inserting the values into Table 
INSERT INTO Enrollments (Enrollment_ID , Student_ID , Course_ID , Enrollment_Date)
VALUES 
	(1 , 1 , 101 , '2022-08-01') ,
    (2 , 2 , 102 , '2023-01-11') ,
	(3 , 3 , 103 , '2024-05-21') ,
    (4 , 4 , 104 , '2024-01-21') ,
	(5 , 5 , 105 , '2023-04-10') ,
	(6 , 6 , 106 , '2022-08-23') ;


-- Retrieve all data from Table
SELECT * FROM Enrollments ;


-- The "OUTPUT"

-- +---------------+-------------+-----------+------------------+
-- | Enrollment_ID | Student_ID  | Course_ID | Enrollment_Date  |
-- +---------------+-------------+-----------+------------------+
-- | 1             | 1           | 101       | 2022-08-01       |
-- | 2             | 2           | 102       | 2023-01-11       |
-- | 3             | 3           | 103       | 2024-05-21       |
-- | 4             | 4           | 104       | 2024-01-21       |
-- | 5             | 5           | 105       | 2023-04-10       |
-- | 6             | 6           | 106       | 2022-08-23       |
-- +---------------+-------------+-----------+------------------+


-- ---------------------------------------------------------------------------------------------------


-- Create the Table
CREATE TABLE Departments (
	Department_ID  INT  PRIMARY KEY ,
    Department_Name  VARCHAR(255)
) ;


-- Inserting the values into Table 
INSERT INTO Departments (Department_ID , Department_Name)
VALUES 
	(1 , 'Computer Science') ,
    (2 , 'Mathematics') ,
	(3 , 'Physics') ,
    (4 , 'Chemistry') ,
	(5 , 'Mechanical Engineering') ,
	(6 , 'Electrical Engineering') ;


-- Retrieve all data from Table
SELECT * FROM Departments ;


-- The "OUTPUT"

-- +---------------+---------------------------+
-- | Department_ID | Department_Name           |
-- +---------------+---------------------------+
-- | 1             | Computer Science          |
-- | 2             | Mathematics               |
-- | 3             | Physics                   |
-- | 4             | Chemistry                 |
-- | 5             | Mechanical Engineering    |
-- | 6             | Electrical Engineering    |
-- +---------------+---------------------------+


-- ---------------------------------------------------------------------------------------------------


-- 1. Perform CRUD Operations on all tables.

-- 1. Students
-- Create (Insert)
INSERT INTO Students (Student_ID , First_Name , Last_Name , Email , Birth_Date , Enrollment_Date)
VALUES
	(7 , 'Nikhil' , 'Patil' , 'nikhil.patil@gmail.com' , '2003-11-11' , '2024-11-11') ;


-- The "OUTPUT"

-- +-------------+------------+-----------+-------------------------+------------+------------------+
-- | Student_ID  | First_Name | Last_Name | Email                   | Birth_Date | Enrollment_Date  |
-- +-------------+------------+-----------+-------------------------+------------+------------------+
-- | 7           | Nikhil     | Patil     | nikhil.patil@gmail.com  | 2003-11-11 | 2024-11-11       |
-- +-------------+------------+-----------+-------------------------+------------+------------------+



-- Retrieve all data from the Table
SELECT * FROM Students ;


-- The "OUTPUT"

-- +-------------+------------+-----------+-------------------------+------------+------------------+
-- | Student_ID  | First_Name | Last_Name | Email                   | Birth_Date | Enrollment_Date  |
-- +-------------+------------+-----------+-------------------------+------------+------------------+
-- | 1           | John       | Deo       | john.deo@gmail.com      | 2000-01-15 | 2022-08-01       |
-- | 2           | Jane       | Smith     | jane.smith@gmail.com    | 2001-10-05 | 2023-01-11       |
-- | 3           | Tushar     | Bagle     | tushar.bagle@gmail.com  | 2002-05-14 | 2024-05-21       |
-- | 4           | Kanish     | Rajput    | kanish.rajput@gmail.com | 2002-01-09 | 2024-01-21       |
-- | 5           | Harshit    | Dhara     | harshit.dhara@gmail.com | 2001-04-19 | 2023-04-10       |
-- | 6           | Nitin      | Singh     | nitin.singh@gmail.com   | 2000-07-11 | 2022-08-23       |
-- | 7           | Nikhil     | Patil     | nikhil.patil@gmail.com  | 2003-11-11 | 2024-11-11       |
-- +-------------+------------+-----------+-------------------------+------------+------------------+



-- Update the data
UPDATE Students
SET Last_Name = 'Pawar'
WHERE Student_ID = 7 ;


-- The "OUTPUT"
-- +-------------+------------+-----------+-------------------------+------------+------------------+
-- | Student_ID  | First_Name | Last_Name | Email                   | Birth_Date | Enrollment_Date  |
-- +-------------+------------+-----------+-------------------------+------------+------------------+
-- | 7           | Nikhil     | Pawar     | nikhil.patil@gmail.com  | 2003-11-11 | 2024-11-11       |
-- +-------------+------------+-----------+-------------------------+------------+------------------+


-- Delete the data
DELETE FROM Students
WHERE Student_ID = 7 ;


-- The "OUTPUT"

-- +----------------+------------+-----------+---------------------------+---------------+
-- | Instructors_ID | First_Name | Last_Name | Email                     | Department_ID |
-- +----------------+------------+-----------+---------------------------+---------------+
-- | 1              | Alice      | Johnson   | alice.johnson@gmail.com   | 1             |
-- | 2              | Bob        | Lee       | bob.lee@gmail.com         | 2             |
-- | 3              | Tushar     | Bagle     | tushar.bagle@gmail.com    | 3             |
-- | 4              | Jayesh     | Patil     | jayesh.patil@gmail.com    | 4             |
-- | 5              | Bhavesh    | Kamble    | bhavesh.kamble@gmail.com  | 5             |
-- | 6              | Yash       | Vasaikar  | yash.Vasaikar@gmail.com   | 6             |
-- +----------------+------------+-----------+---------------------------+---------------+


-- ---------------------------------------------------------------------------------------------------


-- 2. Courses
-- Create (Insert)
INSERT INTO Courses 
VALUES (107 , 'Advanced SQL' , 1 , 5) ;


-- The "OUTPUT"

-- +-----------+--------------+---------------+---------+
-- | Course_ID | Course_Name  | Department_ID | Credits |
-- +-----------+--------------+---------------+---------+
-- | 107       | Advanced SQL | 1             | 5       |
-- +-----------+--------------+---------------+---------+



-- Retrieve all data from the Table
SELECT * FROM Courses ;


-- The "OUTPUT"

-- +-----------+------------------------------------------+---------------+---------+
-- | Course_ID | Course_Name                              | Department_ID | Credits |
-- +-----------+------------------------------------------+---------------+---------+
-- | 101       | Introduction to SQL                      | 1             | 2       |
-- | 102       | Data Stucture                            | 2             | 4       |
-- | 103       | Introduction to SQL & Data Stucture      | 3             | 6       |
-- | 104       | Introduction to Machine Learning         | 4             | 8       |
-- | 105       | Introduction to Deep Learning            | 5             | 10      |
-- | 106       | Introduction to LLM                      | 6             | 12      |
-- | 107       | Advanced SQL			                  | 1             | 5       |
-- +-----------+------------------------------------------+---------------+---------+



-- Update the data
UPDATE Courses
SET Credits = 6
WHERE Course_ID = 107 ;


-- The "OUTPUT"

-- +-----------+--------------+---------------+---------+
-- | Course_ID | Course_Name  | Department_ID | Credits |
-- +-----------+--------------+---------------+---------+
-- | 107       | Advanced SQL | 1             | 6       |
-- +-----------+--------------+---------------+---------+



-- Delete the data
DELETE FROM Courses
WHERE Course_ID = 107 ;


-- The "OUTPUT"

-- +-----------+------------------------------------------+---------------+---------+
-- | Course_ID | Course_Name                              | Department_ID | Credits |
-- +-----------+------------------------------------------+---------------+---------+
-- | 101       | Introduction to SQL                      | 1             | 2       |
-- | 102       | Data Stucture                            | 2             | 4       |
-- | 103       | Introduction to SQL & Data Stucture      | 3             | 6       |
-- | 104       | Introduction to Machine Learning         | 4             | 8       |
-- | 105       | Introduction to Deep Learning            | 5             | 10      |
-- | 106       | Introduction to LLM                      | 6             | 12      |
-- +-----------+------------------------------------------+---------------+---------+


-- ---------------------------------------------------------------------------------------------------

-- 3. Instructors
-- Create (Insert)
INSERT INTO Instructors
VALUES (7 , 'Rahul' , 'Sharma' , 'rahul.sharma@gmail.com' , 1 , 20000.00) ;


-- The "OUTPUT"

-- +----------------+------------+-----------+---------------------------+---------------+-----------+
-- | Instructors_ID | First_Name | Last_Name | Email                     | Department_ID | Salary    |
-- +----------------+------------+-----------+---------------------------+---------------+-----------+
-- | 7              | Rahul      | Sharma    | rahul.sharma@gmail.com    | 1             | 20000.00  |
-- +----------------+------------+-----------+---------------------------+---------------+-----------+



-- Retrieve all data from the Table
SELECT * FROM Instructors ;


-- The "OUTPUT"

-- +----------------+------------+-----------+---------------------------+---------------+
-- | Instructors_ID | First_Name | Last_Name | Email                     | Department_ID |
-- +----------------+------------+-----------+---------------------------+---------------+
-- | 1              | Alice      | Johnson   | alice.johnson@gmail.com   | 1             |
-- | 2              | Bob        | Lee       | bob.lee@gmail.com         | 2             |
-- | 3              | Tushar     | Bagle     | tushar.bagle@gmail.com    | 3             |
-- | 4              | Jayesh     | Patil     | jayesh.patil@gmail.com    | 4             |
-- | 5              | Bhavesh    | Kamble    | bhavesh.kamble@gmail.com  | 5             |
-- | 6              | Yash       | Vasaikar  | yash.Vasaikar@gmail.com   | 6             |
-- | 7              | Rahul      | Sharma    | rahul.sharma@gmail.com    | 1             |
-- +----------------+------------+-----------+---------------------------+---------------+



-- Update the data
UPDATE Instructors
SET Last_Name = 'Verma'
WHERE Instructors_ID = 7 ;


-- The "OUTPUT"

-- +----------------+------------+-----------+---------------------------+---------------+
-- | Instructors_ID | First_Name | Last_Name | Email                     | Department_ID |
-- +----------------+------------+-----------+---------------------------+---------------+
-- | 7              | Rahul      | Verma     | rahul.sharma@gmail.com    | 1             |
-- +-------------+------------+-----------+-------------------------+------------+-------+



-- Delete the data
DELETE FROM Instructors
WHERE Instructors_ID = 7 ;


-- The "OUTPUT"

-- +----------------+------------+-----------+---------------------------+---------------+
-- | Instructors_ID | First_Name | Last_Name | Email                     | Department_ID |
-- +----------------+------------+-----------+---------------------------+---------------+
-- | 1              | Alice      | Johnson   | alice.johnson@gmail.com   | 1             |
-- | 2              | Bob        | Lee       | bob.lee@gmail.com         | 2             |
-- | 3              | Tushar     | Bagle     | tushar.bagle@gmail.com    | 3             |
-- | 4              | Jayesh     | Patil     | jayesh.patil@gmail.com    | 4             |
-- | 5              | Bhavesh    | Kamble    | bhavesh.kamble@gmail.com  | 5             |
-- | 6              | Yash       | Vasaikar  | yash.Vasaikar@gmail.com   | 6             |
-- +-------------+------------+-----------+-------------------------+------------+-------+


-- ---------------------------------------------------------------------------------------------------

-- 4. Enrollments
-- Create (Insert)
INSERT INTO Enrollments
VALUES (7 , 2 , 101 , '2023-02-01') ;


-- The "OUTPUT"

-- +---------------+-------------+-----------+------------------+
-- | Enrollment_ID | Student_ID  | Course_ID | Enrollment_Date  |
-- +---------------+-------------+-----------+------------------+
-- | 7             | 2           | 101       | 2023-02-01       |
-- +---------------+-------------+-----------+------------------+



-- Retrieve all data from the Table
SELECT * FROM Enrollments ;



-- The "OUTPUT"

-- +---------------+-------------+-----------+------------------+
-- | Enrollment_ID | Student_ID  | Course_ID | Enrollment_Date  |
-- +---------------+-------------+-----------+------------------+
-- | 1             | 1           | 101       | 2022-08-01       |
-- | 2             | 2           | 102       | 2023-01-11       |
-- | 3             | 3           | 103       | 2024-05-21       |
-- | 4             | 4           | 104       | 2024-01-21       |
-- | 5             | 5           | 105       | 2023-04-10       |
-- | 6             | 6           | 106       | 2022-08-23       |
-- | 7             | 2           | 101       | 2023-02-01       |
-- +---------------+-------------+-----------+------------------+



-- Update the data
UPDATE Enrollments
SET Course_ID = 102
WHERE Enrollment_ID = 7 ;


-- The "OUTPUT"

-- +---------------+-------------+-----------+------------------+
-- | Enrollment_ID | Student_ID  | Course_ID | Enrollment_Date  |
-- +---------------+-------------+-----------+------------------+
-- | 7             | 2           | 102       | 2023-02-01       |
-- +---------------+-------------+-----------+------------------+



-- Delete the data
DELETE FROM Enrollments
WHERE Enrollment_ID = 7 ;


-- The "OUTPUT"

-- +---------------+-------------+-----------+------------------+
-- | Enrollment_ID | Student_ID  | Course_ID | Enrollment_Date  |
-- +---------------+-------------+-----------+------------------+
-- | 1             | 1           | 101       | 2022-08-01       |
-- | 2             | 2           | 102       | 2023-01-11       |
-- | 3             | 3           | 103       | 2024-05-21       |
-- | 4             | 4           | 104       | 2024-01-21       |
-- | 5             | 5           | 105       | 2023-04-10       |
-- | 6             | 6           | 106       | 2022-08-23       |
-- +---------------+-------------+-----------+------------------+


-- ---------------------------------------------------------------------------------------------------

-- 5. Departments
-- Create (Insert)
INSERT INTO Departments
VALUES (7 , 'Civil Engineering') ;


-- The "OUTPUT"

-- +---------------+----------------------------+
-- | Department_ID | Department_Name            |
-- +---------------+----------------------------+
-- | 7             | Civil Engineering          |
-- +---------------+----------------------------+



-- Retrieve all data from the Table
SELECT * FROM Departments ;


-- The "OUTPUT"

-- +---------------+---------------------------+
-- | Department_ID | Department_Name           |
-- +---------------+---------------------------+
-- | 1             | Computer Science          |
-- | 2             | Mathematics               |
-- | 3             | Physics                   |
-- | 4             | Chemistry                 |
-- | 5             | Mechanical Engineering    |
-- | 6             | Electrical Engineering    |
-- | 7             | Civil Engineering         |
-- +---------------+---------------------------+



-- Update the data
UPDATE Departments
SET Department_Name = 'Civil Engg'
WHERE Department_ID = 7 ;


-- The "OUTPUT"

-- +---------------+----------------------------+
-- | Department_ID | Department_Name            |
-- +---------------+----------------------------+
-- | 7             | Civil Engg                 |
-- +---------------+----------------------------+



-- Delete the data
DELETE FROM Departments
WHERE Department_ID = 7 ;


-- The "OUTPUT"

-- +---------------+---------------------------+
-- | Department_ID | Department_Name           |
-- +---------------+---------------------------+
-- | 1             | Computer Science          |
-- | 2             | Mathematics               |
-- | 3             | Physics                   |
-- | 4             | Chemistry                 |
-- | 5             | Mechanical Engineering    |
-- | 6             | Electrical Engineering    |
-- +---------------+---------------------------+


-- ---------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------



-- 2. Retrieve students who enrolled after 2022.
SELECT
	*
FROM Students 
WHERE Enrollment_Date > '2022-12-31' ;


-- The "OUTPUT"

-- +-------------+------------+-----------+-------------------------+------------+------------------+
-- | Student_ID  | First_Name | Last_Name | Email                   | Birth_Date | Enrollment_Date  |
-- +-------------+------------+-----------+-------------------------+------------+------------------+
-- | 2           | Jane       | Smith     | jane.smith@gmail.com    | 2001-10-05 | 2023-01-11       |
-- | 3           | Tushar     | Bagle     | tushar.bagle@gmail.com  | 2002-05-14 | 2024-05-21       |
-- | 4           | Kanish     | Rajput    | kanish.rajput@gmail.com | 2002-01-09 | 2024-01-21       |
-- | 5           | Harshit    | Dhara     | harshit.dhara@gmail.com | 2001-04-19 | 2023-04-10       |
-- +-------------+------------+-----------+-------------------------+------------+------------------+


-- ---------------------------------------------------------------------------------------------------



-- 3. Retrieve courses offered by the Mathematics department with the limit of the 5 courses.
SELECT
	c.* 
FROM Courses c

JOIN Departments d 
ON d.Department_ID = c.Department_ID

WHERE Department_Name = 'Mathematics'
LIMIT 5 ;


-- The "OUTPUT"

-- +-----------+------------------+---------------+---------+
-- | Course_ID | Course_Name      | Department_ID | Credits |
-- +-----------+------------------+---------------+---------+
-- | 102       | Data Stucture    | 2             | 4       |
-- +-----------+------------------+---------------+---------+


-- ---------------------------------------------------------------------------------------------------



-- 4. Get the number of students enrolled in each course , filtering for courses with more than 5 students.
SELECT
	Course_ID ,
    COUNT(Student_ID) AS Total_Student
FROM Enrollments
GROUP BY Course_ID 
HAVING COUNT(Student_ID) > 5 ;


-- The "OUTPUT"

-- Empty Table because there is no course has > 5 students


-- ---------------------------------------------------------------------------------------------------



-- 5. Find students who are enrolled in both Introduction of SQL and Data Stucture.
SELECT
	s.Student_ID ,
    First_Name ,
    Last_Name ,
    Course_Name 
FROM Students s
JOIN Enrollments e
ON s.Student_ID = e.Student_ID

JOIN Courses c
ON c.Course_ID = e.Course_ID 

WHERE Course_Name = 'Introduction to SQL & Data Stucture' ;


-- The "OUTPUT"

-- +-------------+------------+-----------+-------------------------------------+
-- | Student_ID  | First_Name | Last_Name | Course_Name                         |
-- +-------------+------------+-----------+-------------------------------------+
-- | 3           | Tushar     | Bagle     | Introduction to SQL & Data Stucture |
-- +-------------+------------+-----------+-------------------------------------+


-- ---------------------------------------------------------------------------------------------------



-- 6. Find student who are either enrolled in Introduction to SQL or Data Stucture.
SELECT
	s.Student_ID ,
    First_Name ,
    Last_Name ,
    Course_Name 
FROM Students s
JOIN Enrollments e
ON s.Student_ID = e.Student_ID

JOIN Courses c
ON c.Course_ID = e.Course_ID

WHERE Course_Name IN ('Introduction to SQL' , 'Data Stucture') ;


-- The "OUTPUT"

-- +-------------+------------+-----------+---------------------+
-- | Student_ID  | First_Name | Last_Name | Course_Name         |
-- +-------------+------------+-----------+---------------------+
-- | 1           | John       | Deo       | Introduction to SQL |
-- | 2           | Jane       | Smith     | Data Stucture       |
-- +-------------+------------+-----------+---------------------+


-- ---------------------------------------------------------------------------------------------------



-- 7. Calculate the Average number of Credits of all courses.
SELECT
	AVG(Credits) AS Average_Credits
FROM Courses ;


-- The "OUTPUT"

-- +------------------+
-- | Average_Credits  |
-- +------------------+
-- | 7.0000           |
-- +------------------+


-- ---------------------------------------------------------------------------------------------------



-- 8. Find the maximum salary of instuctors in the computer science department.
ALTER TABLE Instructors
ADD Salary DECIMAL(10,2) ;

UPDATE Instructors SET Salary = 50000 
WHERE Instructors_ID = 1 ;

UPDATE Instructors SET Salary = 60000 
WHERE Instructors_ID = 2 ;

UPDATE Instructors SET Salary = 70000 
WHERE Instructors_ID = 3 ;

UPDATE Instructors SET Salary = 80000 
WHERE Instructors_ID = 4 ;

UPDATE Instructors SET Salary = 90000 
WHERE Instructors_ID = 5 ;

UPDATE Instructors SET Salary = 100000 
WHERE Instructors_ID = 6 ;


SELECT 
    MAX(Salary) AS Max_Salary
FROM Instructors i

JOIN Departments d
ON i.Department_ID = d.Department_ID

WHERE d.Department_Name = 'Computer Science' ;


-- The "OUTPUT"

-- +---------------+
-- | Max_Salary    |
-- +---------------+
-- | 50000.00      |
-- +---------------+


-- ---------------------------------------------------------------------------------------------------



-- 9. Count the number of students enrolled in each departments.
SELECT
    d.Department_Name ,
    COUNT(s.Student_ID) AS Total_Student_Per_Department
FROM Students s 

JOIN Enrollments e
ON e.Student_ID = s.Student_ID 

JOIN Courses c
ON e.Course_ID = c.Course_ID  

JOIN Departments d
ON d.Department_ID = c.Department_ID 

GROUP BY d.Department_Name ;


-- The "OUTPUT"

-- +---------------------------+------------------------------+
-- | Department_Name           | Total_Student_Per_Department |
-- +---------------------------+------------------------------+
-- | Computer Science          | 1                            |
-- | Mathematics               | 1                            |
-- | Physics                   | 1                            |
-- | Chemistry                 | 1                            |
-- | Mechanical Engineering    | 1                            |
-- | Electrical Engineering    | 1                            |
-- +---------------------------+------------------------------+


-- ---------------------------------------------------------------------------------------------------



-- 10. INNER JOIN : Retrieve students and their corresponding courses.
SELECT
	s.Student_ID ,
    s.First_Name ,
    c.Course_Name
FROM Enrollments e

JOIN Courses c
ON c.Course_ID = e.Course_ID

JOIN Students s
ON s.Student_ID = e.Student_ID ;


-- The "OUTPUT"

-- +-------------+------------+------------------------------------------+
-- | Student_ID  | First_Name | Course_Name                              |
-- +-------------+------------+------------------------------------------+
-- | 1           | John       | Introduction to SQL                      |
-- | 2           | Jane       | Data Stucture                            |
-- | 3           | Tushar     | Introduction to SQL & Data Stucture      |
-- | 4           | Kanish     | Introduction to Machine Learning         |
-- | 5           | Harshit    | Introduction to Deep Learning            |
-- | 6           | Nitin      | Introduction to LLM                      |
-- +-------------+------------+------------------------------------------+


-- ---------------------------------------------------------------------------------------------------



-- 11. LEFT JOIN :  Retrieve students and their corresponding courses.
SELECT
	s.Student_ID ,
    s.First_Name ,
    c.Course_Name
FROM Students s

LEFT JOIN Enrollments e
ON s.Student_ID = e.Student_ID

LEFT JOIN Courses c
ON c.Course_ID = e.Course_ID ;


-- The "OUTPUT"

-- +-------------+------------+------------------------------------------+
-- | Student_ID  | First_Name | Course_Name                              |
-- +-------------+------------+------------------------------------------+
-- | 1           | John       | Introduction to SQL                      |
-- | 2           | Jane       | Data Stucture                            |
-- | 3           | Tushar     | Introduction to SQL & Data Stucture      |
-- | 4           | Kanish     | Introduction to Machine Learning         |
-- | 5           | Harshit    | Introduction to Deep Learning            |
-- | 6           | Nitin      | Introduction to LLM                      |
-- +-------------+------------+------------------------------------------+


-- ---------------------------------------------------------------------------------------------------



-- 12. Subquery : Find students enrolled in courses that have more than 10 students.
SELECT
	s.Student_ID ,
    c.Course_Name ,
	COUNT(c.Course_ID) AS Number_Of_Students
FROM Students s
JOIN Enrollments e
ON e.Student_ID = s.Student_ID 

JOIN Courses c
ON c.Course_ID = e.Course_ID 

WHERE c.Course_ID = (
	SELECT
		e.Course_ID
	FROM Enrollments e
    GROUP BY c.Course_ID
	HAVING COUNT(s.Student_ID) > 10
) ;


-- The "OUTPUT"

-- Empty Table because there is no course has > 5 students


-- ---------------------------------------------------------------------------------------------------



-- 13. Extract the Year from the Enrollment_Date of students.
SELECT
	YEAR(Enrollment_Date) AS Year
FROM Enrollments ;


-- The "OUTPUT"

-- +------+
-- | Year |
-- +------+
-- | 2022 |
-- | 2023 |
-- | 2024 |
-- | 2024 |
-- | 2023 |
-- | 2022 |
-- +------+


-- ---------------------------------------------------------------------------------------------------



-- 14. Concatenate the instructor's First and Last Name.
SELECT
	CONCAT(First_Name , ' ' , Last_Name) AS Full_Name
FROM Instructors ;


-- The "OUTPUT"

-- +------------------+
-- | Full_Name        |
-- +------------------+
-- | Alice Johnson    |
-- | Bob Lee          |
-- | Tushar Bagle     |
-- | Jayesh Patil     |
-- | Bhavesh Kamble   |
-- | Yash Vasaikar    |
-- +------------------+


-- ---------------------------------------------------------------------------------------------------



-- 15. Calculate the running total of students enrolled in courses.
SELECT
	Course_ID ,
    COUNT(Student_ID) AS Number_Of_Students ,
    SUM(COUNT(Student_ID))  OVER(ORDER BY Course_ID) AS Total_Students
FROM Enrollments
GROUP BY Course_ID ;


-- The "OUTPUT"

-- +-----------+--------------------+----------------+
-- | Course_ID | Number_Of_Students | Total_Students |
-- +-----------+--------------------+----------------+
-- | 101       | 1                  | 1              |
-- | 102       | 1                  | 2              |
-- | 103       | 1                  | 3              |
-- | 104       | 1                  | 4              |
-- | 105       | 1                  | 5              |
-- | 106       | 1                  | 6              |
-- +-----------+--------------------+----------------+


-- ---------------------------------------------------------------------------------------------------



-- 16. Label students as 'Senior' or 'Junior' based on thier 
--     yaer of Enrollment(If the Enrollment date is more than 
--     4 years from the currentdate , put the label 'Senior' 
--     otherwise 'Junior')
SELECT 
    First_Name ,
    CASE 
        WHEN TIMESTAMPDIFF(YEAR , Enrollment_Date , CURDATE()) > 4 THEN 'Senior'
        ELSE 'Junior'
    END AS Status
FROM Students ;


-- The "OUTPUT"

-- +------------+--------+
-- | First_Name | Status |
-- +------------+--------+
-- | John       | Junior |
-- | Jane       | Junior |
-- | Tushar     | Junior |
-- | Kanish     | Junior |
-- | Harshit    | Junior |
-- | Nitin      | Junior |
-- +------------+--------+


-- ---------------------------------------------------------------------------------------------------