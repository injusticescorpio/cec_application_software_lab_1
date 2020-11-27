CREATE SCHEMA `instructor` ;
use instructor;

-- Question 1
create table Department(
code varchar(6) primary key,
title char(10),
Department_name varchar(10) unique,
Department_id varchar(10),
salary int check (salary >2000)
);
insert into Department(code,title,Department_name,Department_id,salary)
values
(1,"A","CS","CS210",3000),
(2,"B","EEE","EE123",40000),
(3,"C","EC","EC231",5000);
select * from department;

-- Question 2 
create table Instructor(
name char(20) not null,
code varchar(6) primary key,
id varchar(6) default 'ABC'
);
insert into instructor(name,code)
values
("Arjun","CS11"),
("Dennis","EE12"),
("Bikku","EC114");


select * from instructor;