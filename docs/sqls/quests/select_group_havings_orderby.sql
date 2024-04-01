-- Table : Products
-- 조건 : CategoryID 가 10개 이상
SELECT COUNT(CategoryID) AS CNT, CategoryID
FROM Products
GROUP BY CategoryID
HAVING COUNT(CategoryID) >= 10;
-- COUNT : 5 / CategoryID : 1, 2, 3, 4, 8


-- Table : Customers, Orders
-- 조건 : 주문 갯수가 5개 이상인 CustomerName 찾기
SELECT COUNT(CustomerID) AS CNT, CustomerID
FROM Orders
GROUP BY CustomerID
HAVING COUNT(CustomerID) >= 5;
-- COUNT : 9 / CustomerID : 20, 37, 41, 46, 51, 63, 65, 75, 87
SELECT CustomerID, CustomerName
FROM Customers
WHERE CustomerID IN (20, 37, 41, 46, 51, 63, 65, 75, 87);


-- Table : Orders
-- 조건 : 가장 많이 주문 받은 회사 LastName과 갯수
SELECT COUNT(EmployeeID) AS CNT, EmployeeID
FROM Orders
GROUP BY EmployeeID
HAVING COUNT(EmployeeID) >= 20;
-- COUNT : 5 / EmployeeID : 1, 2, 3, 4, 8
SELECT EmployeeID, LastName
FROM Employees
WHERE EmployeeID IN (1, 2, 3, 4, 8);



------------------------------------
-- 서브쿼리? : 정형 데이터가 들어갈 수 있는 곳엔 모두 서브쿼리가 들어갈 수 있다.
-- table 자체가 정형 데이터니까.. 그래서 FROM에 넣어도 아무 문제 없다~ 
SELECT CustomerID, CustomerName
FROM Customers
WHERE CustomerID IN (SELECT CustomerID
                  FROM Orders
                  GROUP BY CustomerID
                  HAVING COUNT(CustomerID) >= 5
                  );

SELECT EmployeeID, LastName
FROM Employees
WHERE EmployeeID IN (SELECT EmployeeID
                FROM Orders
                GROUP BY EmployeeID
                HAVING COUNT(EmployeeID) >= 20
                );


-- 서브쿼리가 2개 3개씩 들어갈 때 사용
SELECT SUB_ORDERS.CNT, SUB_ORDERS.CustomerID
FROM (
		SELECT COUNT(CustomerID) AS CNT, CustomerID
        FROM Orders
        GROUP BY CustomerID
        HAVING COUNT(CustomerID) >= 5
) AS SUB_ORDERS; --> AS로 TABLE 이름 생성 후 . 으로 연결


