-- https://www.w3schools.com/sql/sql_case.asp

SELECT OrderID, Quantity,
    (CASE
        WHEN NAME = '이' THEN 'YES'
        WHEN NAME = '오' THEN 'YES'
        ELSE NULL
    END) AS QuantityText
FROM OrderDetails;

        