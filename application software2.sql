CREATE SCHEMA `employee`;
use employee;
-- Q1 Creating table

create table Employee
(
code varchar(4) primary key,
name char(10),
designation char(30),
dob_date date,
salary float
);
desc Employee;
-- Q2 Adding values
insert into Employee(code,name,designation,dob_date,salary)
values
("e1","arjun","chengannur","2000-06-13",45000),
("e2","bikku","alapuzha","2001-11-2",95000);
-- Q3 select all value
select * from Employee;
-- Q4-- 
update Employee
set
salary=24000
where
code="e1";
-- Q5
delete from employee
where code="e1";