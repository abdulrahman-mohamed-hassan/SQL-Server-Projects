insert into customer (first_name,last_name,gender,phone_number)
values('Ahmed','Sadek','Male',01222203003);

insert into customer (first_name,last_name,gender,phone_number)
values('Mohamed','karim','Male',01222203004),
('Mohamed','Ali','Male',01222203004),
('Hassan','karim','Male',01222203005),
('Mohamed','Noaman','Male',01222203006),
('Mohamed','Abdulrahman','Male',01222203007);

insert into product (name,price,coffee_orgin)
values('espreso',3.45,'barazil'),
('latte',2.75,'turkey'),
('cappuccino',5.67,'turkey'),
('machiato',7.45,'turkey'),
('matcha',6.35,'turkey');

insert into orders (customer_id,product_id)
values(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

Alter table product
add coffee_origin varchar(30);

insert into product (name,price,coffee_orgin)
values ('Espresso',2.5,'Brazil');

insert into product (name,price,coffee_orgin)
values ('Latte',3.5,'Germany'),('Macchiato',4.5,'Swiss'),
('Matcha',3.45,'Korea'),('Frappe',6.35,'Egypt');

-- how to retrieve records from table products--
select * from product;

-- how to enter just one attribute (prodname) in t products--
insert into product(name)
values('Tea');

select name ,price from product;
select price from product;

--where clause = condition for specification--

select * from product
where name='Latte';

-- how to enter value in a column in a table
update orders
set order_time ='2024/10/31 08:30:15'
where id =3;

alter table orders
add order_time datetime;

insert into orders(order_time,customer_id,product_id)
values ('2024/05/21 11:25:30',1,1),
('2023/08/02 01:45:30',2,2);

insert into customer (first_name,last_name,phone_number,gender)
values ('Ahmed','Tamer','01222457896','Male'),
('Mohamed','Samir','01222857896','Male'),
('Nadine','Tarek','01212457896','Female'),
('Basma','Ahmed','01228457896','Female'),
('karim','karam','01252457896','Male'),
('Farida','Tharwat','01292457896','Female'),
('Iman','Loay','01262457896','Female'),
('Kyrolos','Robeel','01212457896','Male'),
('Nada','Adel','01202457896','Female'),
('Youssef','Bahaa','01282457896','Male');

insert into product(name,price,coffee_orgin)
values ('Latte',4.25,'Brazil'),
('Macchiato',5.75,'Germany'),
('Cappuccino',3.55,'india'),
('Turkish Coffee',2.25,'Turkey'),
('Mocca',3.33,'sweden'),
('Cream',1.25,'Belgium'),
('Frappe',3.65,'France');


insert into orders (customer_id,product_id,order_time)
values (1,5,'2023/05/15 13:05:25'),
(4,2,'2023/08/22 11:09:20'),
(3,3,'2023/02/14 10:10:10'),
(2,3,'2023/07/22 9:12:30'),
(9,6,'2023/01/14 19:24:30'),
(10,4,'2023/12/15 18:25:20'),
(1,2,'2023/06/14 17:35:02'),
(7,5,'2023/04/19 01:45:01');

/* Select Statements */

SELECT Price, name
FROM product;

select* from product;

SELECT Distinct Price 
FROM product;

Select * from customer;

select * from product
where coffee_orgin='Brazil';

select * from product
where price = 4.25;

select * from product
where price >= 4.25;

select * from product
where price <= 4.25;

Select first_name from customer;

Select first_name, phone_number from customer;

select * from product
where coffee_orgin='Brazil';

select * from product
where price=3;

select * from product 
where price=3
AND coffee_orgin='Brazil';

-- and (t,t)
-- or (f,t)

select * from customer
where first_name='Ahmed'
and last_name='Mohamed';


select * from customer
where first_name='Ahmed'
or last_name='Mohamed';


Select * from product 
where price= 3
or coffee_orgin='Brazil';

select * from product
where price<3;

select * from product 
where price<=3;

select * from customer 
where phone_number is Null;

select * from customer 
where phone_number is not null;

select * from customer
where first_name in ('Ahmed','Mohamed','Nadine');

select * from customer
where first_name not in ('Ahmed','Mohamed','Nadine');

-- extract cust id , prod id 
-- for orders done from 2024/10-01 to 2024/10/31 

select customer_id , product_id from orders
where order_time between '2024/10/01 11:40:15' and '2024/10/31 12:00';

-- range of customers begin with id 1 to 5 

select * from customer
where id between 1 and 5 ;


select product_id,customer_id,order_time from orders
where order_time between '2023/01/14 19:24:30' AND '2023/08/22 11:09:20';

select product_id,customer_id,order_time from orders
where customer_id between 5 and 10;

select * from customer
where last_name like 'A%';

select * from customer
where last_name like '%A';



select * from customer
where last_name like '%A%' ;

select * from customer
where first_name like '_A__';

select * from product
where price like '3%';

--sorting (arranging)


select * from product
order by price ASC;


select * from product
order by price Desc;

select * from customer
order by last_name ASC;


select * from customer
order by last_name Desc;

select * from orders
where customer_id=1
order by order_time ASC; --earliest to latest
--latest to earliest

select  distinct customer_id from orders
where order_time between '2023/01/14 19:24:30' AND '2023/08/22 11:09:20';

select  distinct customer_id , product_id from orders
where order_time between '2023/01/14 19:24:30' AND '2023/08/22 11:09:20';

select * from customer
order by first_name asc , last_name desc;

select * from product
where not price  >3.00;


select * from product
where not price  <3.00;

select max (price) from product;

select min (price) from product;

select count(*) from customer;

select count(first_name) from customer
where first_name='Ahmed';

select sum (price) from product;

select AVG(price) from product;

select first_name as name from customer;

select first_name name from customer;

SELECT TOP 70 PERCENT * FROM Customer;
