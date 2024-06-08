USE AdventureWorks2014;

SELECT TOP 10
    C.CustomerID,
    
    SUM(SOH.TotalDue) AS TotalAmountSpent
FROM 
    Sales.Customer AS C
JOIN 
    Sales.SalesOrderHeader AS SOH ON C.CustomerID = SOH.CustomerID
GROUP BY 
    C.CustomerID
ORDER BY 
    TotalAmountSpent DESC;
