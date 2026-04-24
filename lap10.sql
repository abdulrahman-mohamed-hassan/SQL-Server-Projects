--Lab 11-- 
--Block of codes--
--Bulk of statements--
--define variable,assign value in variable--
Declare 
@model_year int;
set @model_year=2018;
select product_name,model_year,list_price
from production.products
where @model_year =model_year 
order by product_name;
--how to select a record into a variable--
declare 
@productname varchar (max),
@model_yearr int,
@list_price decimal (10,2);
select @productname = product_name,
@model_yearr = model_year,
@list_price =list_price
from production.products
where product_id=1;
select @productname as product_name ,
@model_yearr as model_year ,
@list_price as list_price;
--create procedure (function) , find prod by any model year
-- then return number of products found--
create procedure findproyear(@model_year int,
@product_count int output)
AS --Head--
BEGIN --after body of code--
select product_name,list_price from production.products
where @model_year =model_year;
select @product_count =@@ROWCOUNT
END;

declare 
@count int;
execute findproyear
@model_year=2018,
@product_count = @count output;
select @count as 'No of found products';
-- get product id, name , for any product whose list price >10,000
-- when there is no product , no products found
BEGIN
select product_id,product_name 
from production.products
where list_price >20000
if @@ROWCOUNT =0
print ' No of products found whose price >10,000'
END;
--the most expensive product , show user the most exp product
-- if not found , no products found
BEGIN
declare @name varchar(max);
select top 1 
@name = product_name 
from production.products
order by list_price desc
if @@ROWCOUNT <>0 
print 'The most expensive product is ' +@name 
else 
print'No products found'
END;
--Get Sum of sales in 2017 , when sales get 10m show user you have acheived target
-- if not show user you have not acheived sales
BEGIN
declare @sales int;
select @sales = sum(list_price * quantity) from sales.order_items oi
join sales.orders o on oi.order_id = o.order_id
where year(order_date) = 2017
if @sales >10000000 
print 'Great you have acheived sales :)'
Else
Print 'you are loser :('
END;
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