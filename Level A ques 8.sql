USE AdventureWorks2014;


SELECT DISTINCT
    c.CustomerID,
    p.FirstName,
    p.LastName    
FROM 
    Sales.Customer AS c
    INNER JOIN Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
    INNER JOIN Sales.SalesOrderDetail AS sod ON soh.SalesOrderID = sod.SalesOrderID
    INNER JOIN Production.Product AS prod ON sod.ProductID = prod.ProductID
    INNER JOIN Person.BusinessEntityAddress AS bea ON c.CustomerID = bea.BusinessEntityID
    INNER JOIN Person.Address AS a ON bea.AddressID = a.AddressID
    INNER JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID
WHERE 
    a.City = 'London' 
    AND prod.Name = 'Chai';





