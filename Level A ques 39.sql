USE AdventureWorks2014;

SELECT 
    P.Name AS ProductName,
    SUM(SOD.LineTotal) AS TotalRevenue
FROM 
    Production.Product AS P
JOIN 
    Sales.SalesOrderDetail AS SOD ON P.ProductID = SOD.ProductID
GROUP BY 
    P.Name
ORDER BY 
    TotalRevenue DESC;
