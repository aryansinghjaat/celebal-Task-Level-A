USE AdventureWorks2014;

SELECT 
    SOH.SalesOrderID,
    P.Name AS ProductName
FROM 
    Sales.SalesOrderDetail AS SOD
JOIN 
    Sales.SalesOrderHeader AS SOH ON SOD.SalesOrderID = SOH.SalesOrderID
JOIN 
    Production.Product AS P ON SOD.ProductID = P.ProductID;
