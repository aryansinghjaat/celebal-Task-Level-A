USE AdventureWorks2014;

SELECT DISTINCT 
    P.Name AS ProductName
FROM 
    Production.Product AS P
JOIN 
    Sales.SalesOrderDetail AS SOD ON P.ProductID = SOD.ProductID;
