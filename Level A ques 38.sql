USE AdventureWorks2014;

SELECT TOP 1
    SOH.OrderDate
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    (
        SELECT 
            TOP 1
            SalesOrderID,
            SUM(LineTotal) AS TotalAmount
        FROM 
            Sales.SalesOrderDetail
        GROUP BY 
            SalesOrderID
        ORDER BY 
            SUM(LineTotal) DESC
    ) AS SOD ON SOH.SalesOrderID = SOD.SalesOrderID
ORDER BY 
    SOD.TotalAmount DESC;
