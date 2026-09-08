
--We are creating a data base to strore our data
--IF NOT EXISTS : Ensures that we dont delete the database if it already exixts
CREATE CATALOG IF NOT EXISTS Brightlearn_course_students;

--We are creating a databse
--This is to check if the catlog is created
show catalogs;
--Creating a schema inside my database
CREATE SCHEMA IF NOT EXISTS BrightLearn_course_students;-- we are creating a schema iniside a database 

--This is to check if the schema is created exixts
SHOW SCHEMAS FROM Brightlearn_course_students;

--Creating a table inside my schema
CREATE TABLE IF  NOT EXISTS Brightlearn_course_students.students(
  students_id INT,
  name STRING,
  age INT,
  mark INT,
  course STRING);
  --We are inserting data into the table
  INSERT INTO Brightlearn_course_students.students VALUES
  (1, 'Thabo', 20, 75, 'Data Analytics'),
  (2,'Lerato', 22, 85, 'Data Science'),
  (3, 'Sipho', 19, 55, 'Data Analytics') ,
  (4, 'Amahle', 25, 65,'Data Engineering'),
  (5, 'John', 21, 90, 'Data Science');

  SELECT DISTINCT name ,age, course
  FROM Brightlearn_course_students.students
  WHERE course = 'Data Science';

SELECT  name, mark
FROM Brightlearn_course_students.students
WHERE mark > 70;

SELECT name, mark
FROM Brightlearn_course_students.students
WHERE mark >= 70;

SELECT DISTINCT name, age 
FROM Brightlearn_course_students.students
WHERE age <= 21;

SELECT name,age
FROM Brightlearn_course_students.students
WHERE age <=21;

SELECT DISTINCT name, course
FROM Brightlearn_course_students.students
WHERE course != 'Data Analytics';
