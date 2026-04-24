
select customer.first_name,orders.order_time
from customer
join orders on customer.id=orders.customer_id;

select c.first_name,o.order_time
from customer c
join orders o on c.id=o.customer_id;

-- left join -- 
select p.name,p.coffee_orgin, o.order_time from product p
join orders o on p.id=o.product_id;

select product.name,product.coffee_orgin,orders.order_time from product
inner join orders on product.id=orders.product_id;

/* fn from customer , prod name from prod,order_time */ 
select c.first_name,p.name,o.order_time 
from customer c
join orders o on c.id=o.customer_id
join product p on p.id=o.product_id;

-- for female gender
select c.first_name,p.name,o.order_time 
from customer c
join orders o on c.id=o.customer_id
join product p on p.id=o.product_id
where c.gender='Female';

-- n-1 = number of tables -1 = how many joins used
-- 3 tables - 1 = 2 join 




select customer.first_name , product.name , orders.order_time from customer
join orders on customer.id = orders.customer_id
join product on product.id=orders.product_id;

select customer.first_name , product.name , orders.order_time from customer
join orders on customer.id = orders.customer_id
join product on product.id=orders.product_id
order by orders.order_time ASC; /* from earliest to latest */ 

-- no of joins = no of tables -1 = how many joins used
-- 4-1 = 3 joins

select o.product_id , c.last_name from orders o 
left join customer c on c.id=o.customer_id 
;

select o.product_id , c.last_name from customer c
right join orders o on c.id=o.customer_id 
;

select o.product_id , c.last_name from orders o 
right join customer c on c.id=o.customer_id ;

select c.first_name , o.product_id from customer c
right join orders o on c.id = o.customer_id;

select c.first_name , o.product_id from customer c
right join orders o on c.id = o.customer_id;


select c.first_name , o.product_id from customer c
Left join orders o on c.id = o.customer_id;

select o.product_id , c.last_name from orders o 
left join customer c on c.id=o.customer_id 
where c.id=1;


-- another method to extract any no of rows in any table

--Join--

-- extract any data from multiple tables 
-- common column

--types of join

--1 Inner join (Join)
--2 Left Join ( LOJ , LIJ)
-- 3 Right Join (ROJ , RIJ)
-- 4 Self Join
-- 5 Full outer join
-- 6 cross join (discussion)

--firstname,lastname,pid,ordertime

--select tn.colname , tn.colname from t1
--join t2 on common column

select customer.first_name,customer.last_name,orders.product_id , orders.order_time
from customer
inner join orders on customer.id=orders.customer_id;

--simplest form--

select c.first_name,c.last_name,o.product_id , o.order_time
from customer c
join orders o on c.id=o.customer_id;

--extract any cust whose first name from range a to h  '[a-h]%'
--extract any cust whose first name from not in  range a to h '^[a-h]%'
--any item begins with 3 or 4 or 6 '[346]%'
--any thing end with percentage '%[%]'
-- ahmed _ali %[_]%
/* join statements 
joining to two or more tables */ /* join or inner join */ 
/* select tablename.attributename,tablename.attribute from table one
join table two on table.pk=table.fk; */

/* select */ 

/*first_name , products id mn orders */

select customer.first_name,orders.product_id from customer
inner join orders on customer.id=orders.customer_id;

select customer.first_name,orders.product_id from orders
inner join customer on customer.id=orders.customer_id;

/* a simplest form */

select c.first_name,o.product_id from customer c
join orders o on c.id=o.customer_id;

select c.first_name,o.product_id,o.order_time from customer c
join orders o on c.id=o.customer_id;

/* cross join*/
--cartesian product 

select * from product;
select * from orders;

select first_name,last_name ,order_time from customer cross join orders;

select c.first_name,c.last_name,o.order_time from customer c
join orders o on c.id=o.customer_id;

select p.name , c.gender,o.customer_id from product p
join orders o on p.id=o.product_id
join customer c on c.id=o.customer_id;

-- example

select c.first_name,o.product_id,p.coffee_orgin from customer c
join orders o on c.id =o.customer_id 
join product p on p.id=o.product_id
where p.price >= 3.00;



/* left join */

select c.first_name,c.last_name,o.product_id,o.order_time from customer c
left outer join orders o on c.id=o.product_id;

select c.first_name,c.last_name,o.product_id,o.order_time from customer c
right outer join orders o on c.id=o.product_id;

select c.first_name,c.last_name,o.product_id,o.order_time from customer c
left outer join orders o on c.id=o.product_id;

select c.first_name,c.last_name,o.product_id,o.order_time from orders o
left outer join customer c on c.id=o.product_id;

/* when will the right join and left join output be the same */ 

select c.first_name,c.last_name,o.product_id,o.order_time from orders o
left outer join customer c on c.id=o.product_id
where o.order_time between '' and '';

----------

--'a%h'

--'%a_' abl akheer feha harf a

--'ahm%' btbd2 b ahm

--'[ahm]% ' haga btbd2 b a or h or m 

--'[^ahm]% ' 3aks el foo2

--'[a-h]%' ------- range

--'[^a-h]%' 3aks el foo2

--'[346]%' bybd2 b 3 aw 4 aw 6

--'%[%]' bt end b percentage

--'%[_]%' haga f nosaha underscore (ahmed_ali)
 
 --'[_] % [_]' awelha w akherha underscore (_ahmed_)


