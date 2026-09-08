-- Step 1: CREATE A Catalog
CREATE CATALOG IF NOT EXISTS exercise3;

--Step 2: Create a schema
CREATE SCHEMA IF NOT EXISTS exercise3.class;

-- STEP 3: CREATE a table
CREATE TABLE IF NOT EXISTS exercise3.class.attedance_brightlearn (
    student_id INT,
    days_present INT,
    total_days INT
);

--STEP 4: Insert the data into the table
INSERT INTO TABLE exercise3.class.attedance_brightlearn VALUES
(1,45,50),
(2,30,50),
(3,48,50),
(4,25,50),
(5,50,50);

--STEP 5: Check the table
SELECT*
FROM exercise3.class.attedance_brightlearn;


SELECT
    student_id,
    (days_present/total_days)*100 AS attendance_percentage,
    CASE
        WHEN attendance_percentage>=90 THEN 'Excellent'
        WHEN attendance_percentage BETWEEN 75 AND 89 THEN 'Good'
        WHEN attendance_percentage<75 THEN 'Needs Improvement'
    END AS attendance_status
FROM exercise3.class.attedance_brightlearn;


---products Table
DROP TABLE IF EXISTS exercise3.class.products;
CREATE TABLE IF NOT EXISTS exercise3.class.products (
    product_id INT,
    product_name STRING,
    price INT
);

INSERT INTO exercise3.class.products VALUES 
(1,'laptop',1200),
(2,'phone',800),
(3,'keyboard',45),
(4,'monitor',300),
(5,'mouse',25);

SELECT*
FROM exercise3.class.products;

SELECT product_id, price,
CASE WHEN price >1000 THEN 'Expensive'
     WHEN price BETWEEN 100 AND 1000 THEN 'Mid-range'  
     WHEN price < 100 THEN 'budget'
     END AS price_category
FROM exercise3.class.products;



---The orders Table
create table if not exists exercise3.class.orders (
  order_id int,
  customer_name string,
  amount int
);

insert into exercise3.class.orders values
(1,'Alice',150),
(2,'Bob',560),
(3,'Charlie',999.99),
(4,'Daina',45.50),
(5,'Ethan',1200);

select customer_name, amount,
case when amount > 1000 then 'high_value'
     when amount between 500 and 999.99 then 'medium_value'
     when amount < 500 then 'low_value'
     end as order_value_category
     from exercise3.class.orders;


---The employees Table
create table if not exists exercise3.class.employees (
  employee_id int,
  employee_name string,
  department string,
  salary int);

insert into exercise3.class.employees values
(1,'John','IT',85000),
(2,'Sara','HR',60000),
(3,'Mike','IT',75000),
(4,'Lucy','finance',95000),
(5,'Tom','HR',55000);

SELECT employee_name, department, 
CASE WHEN department = 'IT' AND salary > 80000 THEN 'Senior IT'
     WHEN department = 'HR' AND salary > 55000 THEN 'Experienced HR'
     ELSE 'staff'
     END AS position_level
FROM exercise3.class.employees;


---The students Table
create table if not exists exercise3.class.students (
  student_id int,
  student_name string,
  score int);

insert into exercise3.class.students values
(1,'Anna',92),
(2,'Ben',76),
(3,'Cara',59),
(4,'David',83),
(5,'Ella',68);

SELECT student_name, score,
CASE WHEN score > 90 THEN 'A'
     WHEN score BETWEEN 80 and 89 THEN 'B'
     WHEN score BETWEEN 70 and 79 THEN 'C'
     WHEN score BETWEEN 60 and 69 THEN 'D'
     else 'F'
     END AS grade
FROM exercise3.class.students;

---The deliveries Table
create table if not exists exercise3.class.deliveries (
  delivery_id int,
  delivery_time_minutes int);

insert into exercise3.class.deliveries values
(1,45),
(2,80),
(3,30),
(4,65),
(5,100);

SELECT delivery_id, delivery_time_minutes,
CASE WHEN delivery_time_minutes <= 30 THEN 'fast'
     WHEN delivery_time_minutes BETWEEN 31 and 60 THEN 'on time'
     WHEN delivery_time_minutes > 60 THEN 'late'
     END AS performance
     FROM exercise3.class.deliveries;


---The tickets Table
create table if not exists exercise3.class.tickets (
  ticket_id int,
  issue_type string,
  priority string);

insert into exercise3.class.tickets values
(1,' long_issue',1),
(2,'Server_down',3),
(3,'Slow_system',2),
(4,'Email_error',2),
(5,'Password_reset',1);

select issue_type, priority,
case when priority = 3 then 'high'
     when priority = 2 then 'medium'
     when priority = 1 then 'low'
     end as priority_level
     from exercise3.class.tickets;

---The products_inventory Table
create table if not exists exercise3.class.products_inventory (
  product_id int,
  stock_Qty int);

insert into exercise3.class.products_inventory values
(1,5),
(2,0),
(3,25),
(4,10),
(5,3);

select product_id, stock_Qty,
case when stock_Qty =0 then 'out_of_stock'
     when stock_Qty between 1 and 5 then 'Low_Stock'
     when stock_Qty > 5 then 'in_stock'
     end as stock_status
     from exercise3.class.products_inventory;

     ---The classes Table
     create table if not exists exercise3.class.table (
  class_id int,
  subject string,
   enrolled_students string);

insert into exercise3.class.table values
(1,'Maths',30),
(2,'English',25),
(3,'Science',15),
(4,'Art',5),
(5,'History',20);

select subject, enrolled_students,
case when enrolled_students > 20 then 'Large'
     when enrolled_students between 10 and 24 then 'Medium'
     when enrolled_students < 10 then 'Small'
     end as class_size_category
     from exercise3.class.table;


     ----The payments Table
     create table if not exists exercise3.class.payments (
  payment_id int,
  payment_method string,
  amount int);

insert into exercise3.class.payments values
(1,'card',50.00),
(2,'cash',200.00),
(3,'card',150.00),
(4,'paypal',75.00),
(5,'cash',300.00);

select payment_id, payment_method, amount,
case when payment_method = 'cash' and amount >200 then 'Eligible_for_Discount'
     else 'Not_Eligible'
end as discount_eligibility
from exercise3.class.payments;
