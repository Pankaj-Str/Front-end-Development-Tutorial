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





