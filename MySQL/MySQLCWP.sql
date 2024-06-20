-- list of database 
show databases;

-- create database 
create database cwp;

-- delete database
drop database cwp;

-- select database
use cwp;

-- create table
-- int  = 0 to 9
-- varchar = "codeswithpankaj.com"
-- date 
-- time 
create table employee(
	id int,
    emp_name varchar(20),
    salary int,
    city varchar(20)
);
-- show table 
select * from employee;

-- enter record into table 
insert into employee value(1,"joy",68000,"mumbai");

insert into employee (id,emp_name,salary,city)
value(2,"Kiran",94560,"Surat");

-- create table 
create table Client( 
	id int,
    name varchar(100),
    email varchar(100) primary key,
    mobile varchar(100),
    salary int,
    date_time datetime
);

-- show table 
select * from clientinfo;

insert into clientinfo(id,name,email,mobile,salary,date_time)
value(1,"joy","joy@p4n.in",7896541,45890,current_timestamp());
insert into clientinfo(name,email,mobile,salary,date_time)
value("joy","joy1@p4n.in",7896541,45890,current_timestamp());

insert into clientinfo(name,email,salary,date_time)
value("joy","joy2@p4n.in",45890,current_timestamp());
-- delete table 

drop table Client;
-- show table info
DESCRIBE client;

-- SQL RENAME TABLE Statement

RENAME TABLE client TO clientinfo;

-- SQL TRUNCATE TABLE Statement
truncate clientinfo;

-- SQL — ALTER TABLE Statement
ALTER TABLE clientinfo ADD address varchar(100);

-- delete col - from table 
ALTER TABLE clientinfo DROP COLUMN address;

-- date 29 - 08 - 2023

-- where
-- switch database 
use classicmodels;

select * from customers;
select customername,phone,city,creditlimit
from customers
where creditlimit < 5000;

-- example 2
select customername,phone,city,creditlimit,creditlimit+5000 as new_creditlimit 
from customers
where creditlimit < 50000;

-- and 
select customername,phone,city,country,creditlimit 
from customers
where creditlimit < 70000 and country = 'USA';
-- or
select customername,phone,city,country,creditlimit 
from customers
where creditlimit < 70000 or country = 'USA';


select * from payments;

select * from payments
where customernumber = 121;

-- date 2 - 9 - 2023

use classicmodels;

select * from payments;

select customernumber,paymentdate,amount 
from payments
where amount < 10000;

select customernumber,paymentdate,amount, amount+500 as update_amount 
from payments
where amount < 10000;

select customernumber,paymentdate,amount, amount+500 as update_amount 
from payments
where amount < 10000;

# count() function

select count(amount)
from payments
where amount < 10000;

# sum() function

select sum(amount)
from payments
where amount < 10000;

select sum(amount+500) as totalsum
from payments
where amount < 10000;

-- group by
select customernumber 
from payments
group by customernumber;

select customernumber, count(customernumber) as totalcustomers
from payments
group by customernumber;

select*from payments;

select customernumber,sum(amount)
from payments
where customernumber = 121;

-- like (search)

select * from customers;

select * from customers
where customername like 'p%'; 

select * from customers
where customername like '%z%'; 

select * from customers
where customername like '%k';

select * from customers
where customername like 'ca%';




-- Date : 16 Sep 2023
-- Select Database 
use classicmodels;

-- group by 
-- order by -- ASC|DESC

select * from customers;

select country , count(country) as total_customers
from customers
group by country;

 select customername,creditlimit,country
 from customers
 where country = "USA";

select sum(creditlimit)
from customers
where country="USA";


-- order by -- ASC|DESC
select * from customers
order by customername ASC;

select * from customers
order by customername DESC;

select customername,creditlimit from customers
order by creditlimit DESC;

select customername,creditlimit from customers
order by creditlimit ASC;

-- distinct Key word

select distinct country
from customers;

-- having 

-- SELECT COUNT(CustomerID), Country
-- FROM Customers
-- GROUP BY Country
-- HAVING COUNT(CustomerID) > 5;

select * from customers;

select count(creditlimit),city
from customers
group by city
having count(creditlimit) < 10000;


-- join Date : 23 - 9 - 2023

use classicmodels; 

 
select * from payments;

-- SELECT customers.name, orders.amount
-- FROM customers
-- INNER JOIN orders ON customers.id = orders.customer_id;

select customers.customernumber, payments.checknumber , payments.amount,
customers.customername, customers.phone , customers.country, customers.city
from payments
inner join  customers
on customers.customernumber = payments.customernumber;


select customers.customernumber, payments.checknumber , payments.amount,
customers.customername, customers.phone , customers.country, customers.city
from customers
left join  payments
on customers.customernumber = payments.customernumber;

select customers.customernumber, payments.checknumber , payments.amount,
customers.customername, customers.phone , customers.country, customers.city
from customers
right join  payments
on customers.customernumber = payments.customernumber;

select * from employees;
select * from offices;

select employees.firstName,employees.jobtitle,
offices.country
from employees
inner join offices
on employees.officecode=offices.officecode;

select * from customers;
select * from orders;

select customers.customername, customers.phone,
orders.orderNumber, orders.orderdate
from orders
right join customers
on customers.customernumber = orders.customernumber;















