create catalog if not exists courses;
create schema if not exists courses.Data;
create table if not exists courses.Data.table1 (course_id int,course_name string,department string, credits int);

---load informtion 

insert into courses.Data.table1 values  
(101,'SQL_basics','IT',3),
(102,'python','IT',4),
(103,'Data_science','IT',4),
(104,'excel','finance',2),
(105,'statistics','Hr',3);

---Show total credits per department, only for departments with more than 5 total credits.
select department, sum(credits) as total_credits
from courses.Data.table1
group by department
having total_credits > 5

---List all courses that do not have 4 credits.
select course_id, course_name, department, credits
from courses.Data.table1
where credits != 4;

---Show the top 3 courses by credits in descending order.
select course_id, course_name, credits
from courses.Data.table1
order by credits desc;

--the enrollment table 
create catalog if not exists enrollment;
create schema if not exists enrollment.Data;
create table if not exists enrollment.Data.table2 (enrollment_id int, course_id int, student_id int, Grade string);
alter table enrollment.Data.table2 add column Grade string;

insert into enrollment.Data.table2 values 
(1,1,101,85),
(1,1,102,78),
(1,1,103,90),
(1,1,104,88),
(1,1,105,82);

select enrollment_id, course_id, student_id,Grade
from enrollment.Data.table2;

select max(Grade) as max_grade, min(Grade) as min_grade, avg(Grade) as avg_grade
from enrollment.Data.table2

select course_id, count(*)enrollment_id
from enrollment.Data.table2
group by course_id

---The salaries Table
create catalog if not exists salaries;
create schema if not exists salaries.Data;
create table if not exists salaries.Data.table3 (employee_id int, employee_name string, department string, salary int,bonus int);

insert into salaries.Data.table3 values 
(1,'Tom','IT',60000,5000),
(2,'jerry','Hr',55000,4000),
(3,'Spike','Finance',70000,6000),
(4,'Tyke','IT',62000,5500),
(5,'Butch','Hr',54000,3500);

select department, sum(salary) as total_salary, sum(bonus) as total_bonus
from salaries.Data.table3
group by department

select department, AVG(salary) as avg_salary
from salaries.Data.table3
where salary > 55000
group by department;

select employee_id, employee_name ,salary +bonus as total_compensation
from salaries.Data.table3
where salary> 60000;


---The projects Table
create catalog if not exists projects;
create schema if not exists projects.Data;
create table if not exists projects.Data.table4 (project_id int, project_name string, department string, budget int);

insert into projects.Data.table4 values 
(1,'AI_app','IT',120000),
(2,'Payroll','fiance',80000),
(3,'Dashboard','IT',150000),
(4,'website','marketing',60000),
(5,'HR_Portal','HR',50000);

select department, sum(budget) as total_budget, AVG(budget) AS average_budget
from projects.Data.table4
where budget > 70000
group by department;

select project_id, project_name,department, budget
from projects.Data.table4
where budget between  50000 and 120000
and department<> 'marketing';
