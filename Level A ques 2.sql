USE AdventureWorks2014;


SELECT 
    c.CustomerID,
    s.Name AS CompanyName
FROM 
    Sales.Customer AS c
    INNER JOIN Sales.Store AS s ON c.StoreID = s.BusinessEntityID
WHERE 
    s.Name LIKE '%N';
