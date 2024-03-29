-- https://www.w3schools.com/sql/sql_groupby.asp

SELECT COUNT(Country), Country  -- SELECT에 넣을 수 없다
FROM Customers 
GROUP BY Country;           -- GROUP BY에 넣지 않은 것은

