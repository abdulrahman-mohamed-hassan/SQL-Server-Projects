-- Hotel Database Queries

-- Q1: Get reservations with cost more than $500
SELECT VISITOR.[Visitor Number], 
       RESERVATION.[Reservation Number], 
       RESERVATION.Cost, 
       VISITOR.Nationalty, 
       VISITOR.Gender
FROM VISITOR 
INNER JOIN RESERVATION ON VISITOR.[Visitor Number] = RESERVATION.[Visitor Number]
WHERE RESERVATION.Cost > 500;

-- Q2: Total revenue for Large Main Course items
SELECT SUM(F.Price) AS TotalMainCourseRevenue_Large
FROM FOOD AS F
WHERE F.Category = 'Main Course' AND F.Size = 'Large';

-- Q3: Total revenue for Medium Main Course items  
SELECT SUM(F.Price) AS TotalMainCourseRevenue_Medium
FROM FOOD AS F
WHERE F.Category = 'Main Course' AND F.Size = 'Medium';