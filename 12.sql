CREATE FUNCTION GetProductSales(p_id INT)
RETURNS VARCHAR(200)
BEGIN
    DECLARE pName VARCHAR(50),
            totalSales INT,
            orderDate DATE;

    SELECT ProductName INTO pName
    FROM Products
    WHERE ProductID = p_id;

    SELECT SUM(Quantity) INTO totalSales
    FROM OrderDetails
    WHERE ProductID = p_id;

    SELECT MIN(OrderDate) INTO orderDate
    FROM Orders o
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    WHERE od.ProductID = p_id;

    RETURN CONCAT('Name: ', pName, 
                  ' | Sales: ', IFNULL(totalSales,0),
                  ' | Date: ', IFNULL(orderDate,'N/A'));
END;

DECLARE custName VARCHAR(50), 
        custEmail VARCHAR(50);

SET custName = 'Ahmed';
SET custEmail = 'ahmed@example.com';

CREATE FUNCTION StaffOrder50()
RETURNS VARCHAR(200)
BEGIN
    DECLARE sName VARCHAR(50),
            oStatus VARCHAR(30);

    SELECT s.FirstName, o.OrderStatus
    INTO sName, oStatus
    FROM Staff s
    JOIN Orders o ON s.StaffID = o.StaffID
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    WHERE od.ProductID = 50
    LIMIT 1;

    RETURN CONCAT('Staff: ', sName, 
                  ' | Status: ', oStatus);
END;

CREATE FUNCTION ProductInfo(p_id INT)
RETURNS VARCHAR(200)
BEGIN
    DECLARE pName VARCHAR(50),
            pYear YEAR,
            pPrice DECIMAL(10,2);

    SELECT ProductName, YEAR(ReleaseDate), Price
    INTO pName, pYear, pPrice
    FROM Products
    WHERE ProductID = p_id;

    RETURN CONCAT('Name: ', pName,
                  ' | Year: ', pYear,
                  ' | Price: ', pPrice);
END;

CREATE FUNCTION CheapestProduct()
RETURNS VARCHAR(100)
BEGIN
    DECLARE pName VARCHAR(50);

    SELECT ProductName
    INTO pName
    FROM Products
    ORDER BY Price ASC
    LIMIT 1;

    IF pName IS NULL THEN
        RETURN 'Product not found';
    END IF;

    RETURN pName;
END;