USE AdventureWorks2014;


SELECT 
    c.CustomerID
FROM 
    Sales.Customer AS c
    INNER JOIN Person.BusinessEntityAddress AS bea ON c.CustomerID = bea.BusinessEntityID
    INNER JOIN Person.Address AS p ON bea.AddressID = p.AddressID   
WHERE 
    p.City IN ('Berlin', 'London');
