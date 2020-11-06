CREATE SCHEMA `Student` ;
use student;
create table student
(
sno int primary key,
name varchar(40),
marks int,
dept char
);
describe student;    -- print details
-- adding new attribute 
alter table student add (age int); 
-- changing datatype size size
alter table student modify dept char(20);
-- deleting attribute called marks
alter table student drop column marks;
-- changing table name
rename table student to students;
describe students;
 -- Adding some values in the table
 insert into students(sno,name,dept,age)
 values
 (1,"bikku","CS",20),
 (2,"dennis","CS",20),
 (3,"milan","CS",20),
 (4,"arjun","EEE",20),
 (5,"fazna","EC",20),
 (6,"helen","EC",20),
 (7,"parvathy","CS",20);
 
 select * from students;
 truncate table students;
 drop table students;
 
 
 


