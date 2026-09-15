----table 1 user
create catalog if not exists table1_users;
create schema if not exists Table1_users;
create table if not exists table1 (user_id int, user_name string,country string);
insert into table1 values (1,' Nomvula', 'Johannesburg'),
(2, 'David', 'Cape_Town'),
(3, 'Anele', 'Durban'),
(4, 'Kabelo', ' Pretoria'),
(5, 'Lirato', ' Port_Elizabeth');

----table 2 plan
create table if not exists table2_plan (plan_id int, plan_name string,monthly_price int);
insert into table2_plan values (10,'Basic', 79),
(11,'Standard', 129),
(12, 'Premium', 199),
(13, 'Family', 249),
(14, 'Mobile', 59);

---Table 3 subscriptions
create or replace table table3_subscriptions (subscription_id int,user_id int ,plan_id int,start_date DATE);
insert into table3_subscriptions values (501, 1, 10, DATE '2026-01-15'),
(502, 2, 11, DATE '2026-02-01'),
(503, 1, 12, DATE '2026-03-10'),
(504, 6, 11, DATE '2026-03-20'),
(505, 3, 13, DATE '2026-04-05');


---Table 4 shows
create table if not exists table4_shows (show_id int, show_title string, genre string);
insert into table4_shows values (701,'Comedy_ Hour', 'Comedy'),
(702,'Crime_Time','Drama'),
(703, 'Tech_Tales', 'Documentary'),
(704, 'Cooking_Lab', 'Lifestyle'),
(706, 'Wild_Earth', 'Documentary');

---Table 5 viewing_sessions
create table if not exists table5_viewing_sessions (session_id int, user_id int, show_id int, watch_minutes int);
insert into table5_viewing_sessions values 
(901, 1, 701, 45),
(902, 2, 703, 30),
(903, 1, 702, 60),
(904, 7, 701, 20),
(905, 3, 705, 90);



---Part A — INNER JOIN
---Qustion 1
select A.user_id, A.user_name, B.subscription_id, B.start_date 
from table1 AS A inner join table3_subscriptions AS B on A.user_id = B.user_id; 

---Question 2

SELECT A.subscription_id, A.user_id, B.plan_name, B.monthly_price
FROM table3_subscriptions AS A INNER JOIN table2_plan AS B ON A.plan_id = B.plan_id; 

---Question 3

SELECT session_id, user_id, show_title, genre, watch_minutes
from table5_viewing_sessions AS A INNER JOIN table4_shows AS B ON A.show_id = B.show_id; 

---Question 4

SELECT user_name, country, session_id, show_id, watch_minutes
FROM table1 AS A INNER JOIN table5_viewing_sessions AS B ON A.user_id = B.user_id; 

---Question 5
select user_name, country, plan_name, monthly_price,start_date
from table1 AS A INNER JOIN table3_subscriptions AS B ON A.user_id = B.user_id INNER JOIN table2_plan AS C ON B.plan_id = C.plan_id;


----Part B  — LEFT JOIN  
---qustion 6 
select A.user_id, A.user_name, B.subscription_id, B.start_date
from table1 AS A LEFT JOIN table3_subscriptions AS B ON A.user_id = B.user_id; 

---qustion 7
select A.plan_id, A.plan_name, B.subscription_id, B.user_id
from table2_plan AS A LEFT JOIN table3_subscriptions AS B ON A.plan_id = B.plan_id; 

---qustion 8 
select A.show_id, A.show_title, B. session_id, B. watch_minutes
from table4_shows AS A LEFT JOIN table5_viewing_sessions AS B ON A.show_id = B.show_id; 

---qustion 9
SELECT A.session_id, A.show_id, A.watch_minutes, B.user_id, B.user_name
FROM table5_viewing_sessions AS A LEFT JOIN table1 AS B ON A.user_id = B.user_id; 

---qustion 10

SELECT user_name, country, plan_name, monthly_price
FROM table1 AS A LEFT JOIN table3_subscriptions AS B ON A.user_id = B.user_id LEFT JOIN table2_plan AS C ON B.plan_id = C.plan_id;

---Part C FULL OUTER JOIN
--QUSETION 11
SELECT A.user_id, A.user_name, B.subscription_id, B.start_date
FROM table1 AS A FULL OUTER JOIN table3_subscriptions AS B ON A.user_id = B.user_id;

--QUSETION 12
SELECT A.plan_id, A.plan_name, B.subscription_id, B.user_id
FROM table2_plan AS A FULL OUTER JOIN table3_subscriptions AS B ON A.plan_id = B.plan_id;

---QUSETION 13 
SELECT A.user_id, A.user_name, B.session_id, B.show_id, B.watch_minutes
FROM table1 AS A FULL OUTER JOIN table5_viewing_sessions AS B ON A.user_id = B.user_id;

---Qustion 14
select A.user_id, A.user_name, B.session_id, B.show_id, B.watch_minutes
from table1 AS A FULL OUTER JOIN table5_viewing_sessions AS B ON A.user_id = B.user_id;



---QUSETION 15 
SELECT A.user_id, A.user_name, B.subscription_id, B.plan_id, C.plan_name
FROM table1 AS A FULL OUTER JOIN table3_subscriptions AS B ON A.user_id = B.user_id FULL OUTER JOIN table2_plan AS C ON B.plan_id = C.plan_id;

