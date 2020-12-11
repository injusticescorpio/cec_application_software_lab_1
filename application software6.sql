CREATE SCHEMA `tablestore` ;
use tablestore;
-- Question 1
create table store(
orderno int primary key auto_increment,
code varchar(20) not null,
item varchar(20),
quantity int not null,
price float not null,
discount float,
mrp float not null
);
-- Question 2
insert into store(orderno,code,item,quantity,price,discount,mrp)
values
(1,"XLBRKF2","Dell Alienware",2,480000,30000,500000),
(2,"PFR2K89A","Dell G7",1,87000,2000,95000),
(3,"SLKBR512","Acer predator 21x",4,3000000,100000,3500000),
(4,"ARJ89712","MacBook Pro",4,780000,50000,1000000);

-- Question 3
select * from store;
-- Question 4 
create view details as
select item,quantity
from store
with check option;
select * from details;
insert into store(orderno,code,item,quantity,price,discount,mrp)
values
(5,"XlpAFH","Dell 5577",9,77500,2000,84000);
select * from details ;
-- Question 5
drop view details;