USE AdventureWorks2014;
SELECT 
    soh.SalesOrderID,
    c.CustomerID,
    p.FirstName,
    p.LastName,
    soh.OrderDate,
    soh.ShipDate,
    sod.ProductID,
    prod.Name AS ProductName,
    sod.UnitPrice,
    sod.OrderQty,
    sod.LineTotal
FROM 
    Sales.SalesOrderHeader AS soh
    INNER JOIN Sales.Customer AS c ON soh.CustomerID = c.CustomerID
    INNER JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID
    INNER JOIN Sales.SalesOrderDetail AS sod ON soh.SalesOrderID = sod.SalesOrderID
    INNER JOIN Production.Product AS prod ON sod.ProductID = prod.ProductID
WHERE 
    soh.OrderDate = (SELECT MIN(OrderDate) FROM Sales.SalesOrderHeader)
