-- https://www.w3schools.com/sql/sql_orderby.asp

SELECT ProductName, CategoryID, Price
FROM Products

ORDER BY Price;
ORDER BY Price DESC; -- DESC는 역순
ORDER BY CategoryID ASC, Price ASC;
