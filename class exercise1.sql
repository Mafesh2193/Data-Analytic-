create  catalog if not exists sales;
create schema if not exists sales.shop;
create table if not exists sales.shop.table1 (
 sales_id int,product string, category string, quntity int,price int);
 
---load information 
 insert into sales.shop.table1 values
(1,'laptop','electronics',2,800),
(2,'mouse','electronics',5,20),
(3,'keybord','electronics',3,50),
(4,'desk','furniture',2,300),
(5,'chair','furniture',4,150),
(6,'monitor','electronics',2,400);

select * from sales.shop.table1;

select count(sales_id)AS no_of_sales
from sales.shop.table1;

select sum(quntity) as product_sold
from sales.shop.table1;

select AVG(price) as product_price 
from sales.shop.table1;

select min(price) as min_price
from sales.shop.table1;

select max(price) as max_price
from sales.shop.table1;

select sum(quntity*price) as revenue
from sales.shop.table1;

select quntity,category, sum (quntity) as category
from sales.shop.table1
group by quntity,category;

select category, sum (quntity) as totaly_quntity
from sales.shop.table1
group by category;
