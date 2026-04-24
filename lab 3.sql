create database labwed2;
use labwed2;

create table customer(
id int identity(1,1) primary key,
first_name varchar(30),
last_name varchar(30),
gender varchar(6) check(gender in ('female','male')),
phone_number char(11)
);

create table product(
id int identity(1,1) primary key,
name varchar(30),
price decimal(3,2),
);

create table orders(
id int identity(1,1) primary key,
customer_id int,
product_id int,
foreign key (customer_id) references customer(id),
foreign key (product_id) references product(id)
);

select * from customer;
select * from orders;
select * from product;
