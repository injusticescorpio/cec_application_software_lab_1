create schema `exp3_employee`;
use exp3_employee;

-- Creating two tables (employee and employeedetails) 
create table employee
(
empid int,
name char(40),
age int,
sex char(10),
foreign key(empid) references employeedetails(empid)
);
create table employeedetails
(
empid int primary key,
dname varchar(20),
place char(20)

);
insert into employee
values
(1,"arjun",20,"Male"),
(2,"bikku",19,"Male"),
(1,"milan",20,"Male"),
(1,"suvarna",20,"Female"),
(1,"paru",20,"Female");

insert into employeedetails(empid,dname,place)
values
(1,"ABC","London"),
(2,"DEF","peru"),
(3,"XYZ","Queens");

select * from employeedetails;
select * from employee;

-- Q2 
SELECT * FROM employee as e1
WHERE EXISTS
(
   SELECT * FROM employeedetails as e2
   WHERE e2.empid = e1.empid
);
-- Q3
SELECT * FROM employee as e1
WHERE not EXISTS
(
   SELECT * FROM employeedetails as e2
   WHERE e2.empid = e1.empid
);


-- select * from employeedetails as e1
-- where  not exists
-- (
-- select * from employee as e2
-- where e1.empid=e2.empid
-- );

