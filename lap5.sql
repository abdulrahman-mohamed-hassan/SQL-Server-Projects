--select statements--
--reterive data , extract--
select *from product;
select *from customer;
select *from orders;

select distinct first_name from customer;
--operators--
-- > , < , = --

--extract products whose price is less than 1.50--
--(condition)--
--condition--> where clause--

select * from product
where coffee_orgin ='Japan';

select * from product
where price < 1.50
and coffee_orgin='Brazil';

--extract products made in japan--
--two conditions--> and,or--
--and-->two conditions must br true--
--or--> one condition should be true--
--extract customers whose first name is ahmed, last name is sadek--
---extract product whoose price is 3.35 and made in brazil---
--extract any costumer whose first name begins with 's'--
--% means any no of characters start--
--extract any costumer whose first name contains 's'--
--% means any no of characters in any blace--
--extract any costumer whose first name end with 's'--
--% means any no of characters last--
--produuct whose price begins with 8--
--sorting--
--arangment(asc,desc)
--asc-->smallest to largest
--dec-->larget to smalllest
--arange product from hiegst prodect to lowest--
select * from customer
where first_name = 'ahmed'
or last_name = 'sadek';


select * from customer
where phone_number is null;



select * from customer
where first_name like 's%';


select * from customer
where first_name like '%s%';

select * from customer
where first_name like '%s';

select * from product
where price like '8%';

select * from customer
where last_name like '_Y_';

select * from customer
where last_name like '___H___';





select * from product
where name in ('esperso','latte','cappuccino');


