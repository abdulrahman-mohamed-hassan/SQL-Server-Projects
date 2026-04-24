create database Lab9;
use Lab9;
/* self join */ 
/* uniary relationship */
/* table employee manage and get managed */
-- table employee and manager 
create table employee (
id int identity (1,1) primary key ,
name varchar(30),
emp_id int,
mgr_id int,
foreign key (emp_id) references employee (id));
/* self join */
SELECT e.name AS Employee, m.name AS Manager
FROM Employee e
LEFT JOIN Employee m
ON e.mgr_id = m.id;
