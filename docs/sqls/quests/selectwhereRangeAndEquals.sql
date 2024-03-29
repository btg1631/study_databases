-- https://www.w3schools.com/sql/sql_where.asp

SELECT *
FROM Customers

-- Table Customers 
-- 조건 Country 가 Germany 와 USA가 아닌 것들
WHERE Country NOT IN ('Germany', 'USA');
-- COUNT : 67

-- 조건 : CustomerID가 50에서 89이고, City가 Berlin인 고객
WHERE CustomerID BETWEEN 50 AND 89 AND CITY = 'London';
-- COUNT : 2