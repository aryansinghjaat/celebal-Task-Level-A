USE AdventureWorks2014;


SELECT 
    DISTINCT c.CustomerID
FROM
    Sales.Customer AS c
    LEFT JOIN Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
    LEFT JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID
    LEFT JOIN Sales.Store AS s ON c.StoreID = s.BusinessEntityID
WHERE 
    soh.CustomerID IS NULL;
