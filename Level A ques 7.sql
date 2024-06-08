USE AdventureWorks2014;


SELECT 
    DISTINCT c.CustomerID
    
FROM 
    Sales.Customer AS c
    LEFT JOIN Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
    
WHERE 
    soh.CustomerID IS NOT NULL;
