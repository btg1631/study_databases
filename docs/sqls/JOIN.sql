-- 2개 JOIN
SELECT *
FROM Products INNER JOIN Suppliers
	ON Suppliers.SupplierID = Products.SupplierID
    AND SupplierName IN ('Exotic Liquid', 'Tokyo Traders')
;

-- alias 사용
SELECT PRODUCT.SupplierID, SUPPLIER.SupplierID
FROM Products AS PRODUCT INNER JOIN Suppliers AS SUPPLIER
	ON SUPPLIER.SupplierID = PRODUCT.SupplierID
    AND SupplierName IN ('Exotic Liquid', 'Tokyo Traders')
;

SELECT PRODUCT.*, SUPPLIER.*
FROM Products AS PRODUCT INNER JOIN Suppliers AS SUPPLIER
	ON SUPPLIER.SupplierID = PRODUCT.SupplierID
    AND SupplierName IN ('Exotic Liquid', 'Tokyo Traders')
;

-- 여러번 JOIN
SELECT Categories.*, PRODUCT.*
FROM Products AS PRODUCT INNER JOIN Suppliers AS SUPPLIER
	ON SUPPLIER.SupplierID = PRODUCT.SupplierID
    AND SupplierName IN ('Exotic Liquid', 'Tokyo Traders')
     INNER JOIN Categories
        ON PRODUCT.CategoryID = Categories.CategoryID
;