-- https://www.w3schools.com/sql/sql_groupby.asp

SELECT COUNT(Country), Country  -- SELECT에 넣을 수 없다
FROM Customers 
GROUP BY Country;           -- GROUP BY에 넣지 않은 것은


-- AS 알리아스??alias 로 이름정하기
SELECT COUNT(Country) AS CNT, Country, MAX(PostalCode) AS MAX_POST
FROM Customers 
GROUP BY Country;

-- HAVING : GROUP BY의 WHERE절 이라고 생각하면 됨
SELECT COUNT(Country) AS CNT, Country
FROM Customers
GROUP BY Country
HAVING COUNT(Country) > 5;
