USE AdventureWorks2014;

SELECT 
    SOH.SalesOrderID,
    SOH.OrderDate,
    C.CustomerID,
   
    SOH.TotalDue
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    Sales.Customer AS C ON SOH.CustomerID = C.CustomerID
WHERE 
    C.CustomerID = (
        SELECT TOP 1 CustomerID
        FROM Sales.SalesOrderHeader
        GROUP BY CustomerID
        ORDER BY SUM(TotalDue) DESC
    );
