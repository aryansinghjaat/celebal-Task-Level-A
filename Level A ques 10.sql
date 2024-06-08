USE AdventureWorks2014;

SELECT DISTINCT
    c.CustomerID
FROM 
    Sales.Customer AS c
    INNER JOIN Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
    INNER JOIN Sales.SalesOrderDetail AS sod ON soh.SalesOrderID = sod.SalesOrderID
    INNER JOIN Production.Product AS prod ON sod.ProductID = prod.ProductID
WHERE 
    prod.Name = 'Tofu';
