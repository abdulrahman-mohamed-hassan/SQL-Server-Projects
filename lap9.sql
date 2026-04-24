--lab week 10 --
--Stored procedure--
-- function --> contains codes --> not shown for all users
-- not all users have access to see codes inside function
-- for security wise--
--bakteb esm procedure , w banadi 3ala esmha--
-- SQL plus additions --> TSQL -->Transact SQL
select product_name , list_price 
from production.products
order by list_price;
--add this code to a stored procedure (function)
CREATE PROCEDURE findproduct
AS
BEGIN
select product_name , list_price from 
production.products
order by list_price;
END;
execute findproduct;
--find product--> name of procedure
-- AS keyword separates between the heading and the body of stored procedure
-- if stored procedure has one statement,begin and end --> optional
-- include them in any code--
--modify the stored procedure--
--Alter procedure -- first step of modifying stored procedure
-- delete procedure--
drop procedure findproduct;
-- second procedure contains parameter (variable) 
Alter PROCEDURE findproduct (@min_list_price AS Decimal)
AS
BEGIN
select product_name , list_price from production.products
where list_price >= @min_list_price --100--	
order by list_price;
END;
execute findproduct 1000;
execute findproduct 2000;
--multiple parameters--
CREATE PROCEDURE listperod (@min_list_price AS Decimal,@max_list_price AS Decimal)
AS
BEGIN
select product_name , list_price from production.products
where list_price >= @min_list_price and list_price <= @max_list_price
order by list_price;
END;
execute listperod
@min_list_price=1000,
@max_list_price=3000,
@name='Trek';
--or--
execute listperod 1000,3000,'trek';
--create optional parameters--
Alter PROCEDURE listperod (@min_list_price AS Decimal =0,@max_list_price
as decimal =999999,@name as varchar(max))
AS
BEGIN
select product_name , list_price from production.products
where list_price >= @min_list_price and
list_price <= @max_list_price and
product_name like '%' + @name + '%'
order by list_price;
END;
execute listperod
@min_list_price=1000,
@max_list_price=3000,
@name='Trek';
--or--
execute listperod @name='Trek';