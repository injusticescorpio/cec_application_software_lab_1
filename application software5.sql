CREATE SCHEMA `details1` ;
use details1;
-- Question 1
create table class(
id int primary key auto_increment,
name char(20)
);
-- Question 2
insert into class(name)
values
("Arjun"),
("Dennis"),
("Bikku"),
("alshone");

-- Question 3
select * from class;

-- Question 4
start transaction;
insert into class(name) values("fazna");
rollback;
select * from class;
commit;
start transaction;
savepoint A;
insert into class(name) values("amie");
insert into class(name) values("anjana");
insert into class(name) values("navami");
select * from class;
rollback to A;
select * from class;
commit; 