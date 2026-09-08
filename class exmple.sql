CREATE TABLE IF NOT EXISTS brightlearn_courses_students (
    student_id INT,
    name STRING,
    age INT,
    mark INT,
    course STRING
);

INSERT INTO brightlearn_courses_students VALUES
    (1, 'Thabo', 20, 75, 'Data Analytics'),
    (2, 'Lerato', 22, 85, 'Data Science'),
    (3, 'Sipho', 19, 55, 'Data Analytics'),
    (4, 'Amahle', 25, 65, 'Data Engineering'),
    (5, 'John', 21, 90, 'Data Science');

SELECT *
FROM brightlearn_courses_students;

-- Question 1: Which students are studying Data Science?

SELECT name,
       age,
       course
FROM brightlearn_courses_students
WHERE course = 'Data Science';

-- Question 2: Which students scored more than 70?

SELECT name,
       age,
       mark,
       course
FROM brightlearn_courses_students
WHERE mark > 70;
 
--select
select*
from brightlearn_courses_students;

select name 
from brightlearn_courses_students;

select name,mark 
from brightlearn_courses_students;

select*
from brightlearn_courses_students
where age>20;

select*
 from brightlearn_courses_students
where mark<70;


--where
select*
from brightlearn_courses_students
where course='Data Analytics';


--order by
select name, mark
from brightlearn_courses_students
order by mark desc;

select name, mark
from brightlearn_courses_students
order by mark ASC;

--Aggregate functions
--finding the average mark
select AVG(mark) AS average_mark
from brightlearn_courses_students;

--finding the highest mark
select MAX(mark) AS highest_mark 
from brightlearn_courses_students;


--find the lowest mark 
select MIN(mark) AS lowest_mark
from brightlearn_courses_students;

--count the number of student 
select count (*) AS total_student
from brightlearn_courses_students;

--GROUP BY 
select course,
count(*) AS number_of_student 
from brightlearn_courses_students
group by course;

select course,
AVG(mark) AS average_mark
from brightlearn_courses_students
group by course;




