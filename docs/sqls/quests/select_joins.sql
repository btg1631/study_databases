-- Table : Customers, Orders
-- 조건 : CustomerName별로 주문 건수 표시
SELECT COUNT(CustomerName), CustomerName
FROM Customers INNER JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
    GROUP BY CustomerName
;
-- Number of Records: 89

-- Table : OrderDetails 
-- 조건 : 제품명,가격, 주문 제품 갯수, 고객명 표시
-- ProductName, Price, Quantity, CustomerName
SELECT Products.ProductName, Products.Price, OrderDetails.Quantity, Customers.CustomerName
FROM OrderDetails
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
;
-- Number of Records: 2155

-- Table : Orders
-- 조건 : 가장 많이 주문 받은 회사 직원명과 갯수
SELECT Shippers.ShipperName, COUNT(Orders.ShipperID) AS CNT
FROM Orders
INNER JOIN Shippers
ON Orders.ShipperID = Shippers.ShipperID
GROUP BY Orders.ShipperID
ORDER BY CNT DESC
LIMIT 1
;
-- Number of Records: 1