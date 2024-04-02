-- + 조건 : 비 진성고객 리스트 필요 -> 구매를 많이 안하는 사람?
SELECT *
FROM Customers
	LEFT JOIN (SELECT CustomerID, COUNT(CustomerID) AS CNT
              FROM Orders
              GROUP BY CustomerID
              ) AS ORDERS_GROUP
	ON Customers.CustomerID = ORDERS_GROUP.CustomerID
WHERE ORDERS_GROUP.CNT IS NULL OR ORDERS_GROUP.CNT = 1
;

-- + 조건 : 판매자 중 수익 낮은 순위자 3명 정보, 총 판매액
SELECT Employees.EmployeeID, SUM(Products.Price) AS TOTAL_PRICE
    FROM OrderDetails
    INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
    INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
    INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
    GROUP BY Employees.EmployeeID
    ORDER BY TOTAL_PRICE ASC
    LIMIT 3
;

-- + 조건 : 배송 회사별 총 배송 건수와 총 제품 금액 정보
SELECT Orders.ShipperID, SUM(TOTAL_PRICE)
FROM Orders
INNER JOIN (
    SELECT OrderID, SUM(Products.Price) AS TOTAL_PRICE
    FROM OrderDetails
    INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
    GROUP BY OrderID
) AS PRODUCT_GROUP ON Orders.OrderID = PRODUCT_GROUP.OrderID
GROUP BY ShipperID;

-- + 조건 : 제품 회사별 총 판매액과 정보
SELECT SUM(Products.Price), Suppliers.*
FROM OrderDetails
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
INNER JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
GROUP BY Suppliers.SupplierID
;

SELECT OrderDetailID, Suppliers.SupplierID, Products.Price, SUM(Price)
FROM OrderDetails
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
INNER JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE Suppliers.SupplierID = 28
;

-- + 조건 : 카테고리별 판매 합계 정보
SELECT Categories.CategoryID, Categories.CategoryName, COUNT(OrderDetails.OrderID) AS CNT
FROM OrderDetails
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
INNER JOIN Categories ON Categories.CategoryID = Products.CategoryID
INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
GROUP BY Categories.CategoryID
;



