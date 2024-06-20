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


