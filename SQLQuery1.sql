--Q1--
CREATE PROCEDURE productSales
@product_id INT
AS
BEGIN
SELECT 
p.product_name,
SUM(oi.quantity * oi.list_price) AS total_sales,
o.order_date
FROM production.products p
JOIN sales.order_items oi ON p.product_id = oi.product_id
JOIN sales.orders o ON oi.order_id = o.order_id
WHERE p.product_id = @product_id
GROUP BY p.product_name, o.order_date;
END;
--Q2--
DECLARE
@fname VARCHAR(50),
@lname VARCHAR(50),
@Email VARCHAR(100);
SELECT 
@fname = first_name,
@lname = last_name,
@Email = email
FROM sales.customers
WHERE customer_id = 1;
SELECT @fname AS first_name, @lname AS last_name, @Email AS email;
--Q3--
CREATE PROCEDURE staffOrderInfo
@product_id INT
AS
BEGIN
SELECT 
s.first_name AS staff_first_name,
o.order_status
FROM sales.staffs s
JOIN sales.orders o ON s.staff_id = o.staff_id
JOIN sales.order_items oi ON o.order_id = oi.order_id
WHERE oi.product_id = 50;
END;
--Q4--
CREATE PROCEDURE productDetails
@product_id INT
AS
BEGIN
SELECT 
product_name,
list_price,
model_year
FROM production.products
WHERE product_id = @product_id;
END;
--Q5--
CREATE PROCEDURE cheapestProduct
AS
BEGIN
DECLARE @name VARCHAR(MAX);
SELECT 
@name = product_name
FROM production.products
WHERE list_price = (SELECT MIN(list_price) FROM production.products);
IF @name IS NOT NULL
PRINT 'The cheapest product is ' + @name;
ELSE
PRINT 'It is not found';
END;
--Q6--
CREATE PROCEDURE brandProducts
@brand_id INT
AS
BEGIN
SELECT
b.brand_name,
p.product_name,
p.model_year
FROM production.brands b
JOIN production.products p ON b.brand_id = p.brand_id
WHERE b.brand_id = @brand_id;
END;
