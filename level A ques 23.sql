USE AdventureWorks2014;

SELECT 
    P.ProductID,
    P.Name AS ProductName,
    P.DiscontinuedDate,
    COUNT(SOD.SalesOrderDetailID) AS OrderCount
FROM 
    Production.Product AS P
JOIN 
    Sales.SalesOrderDetail AS SOD ON P.ProductID = SOD.ProductID
JOIN 
    Sales.SalesOrderHeader AS SOH ON SOD.SalesOrderID = SOH.SalesOrderID
WHERE 
    P.DiscontinuedDate IS NOT NULL
    AND P.DiscontinuedDate BETWEEN '1997-01-01' AND '1998-01-01'
GROUP BY 
    P.ProductID, P.Name, P.DiscontinuedDate
ORDER BY 
    OrderCount DESC;
