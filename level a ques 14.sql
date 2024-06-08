USE AdventureWorks2014;

SELECT 
    SalesOrderID,
    MIN(OrderQty) AS MinimumQuantity,
    MAX(OrderQty) AS MaximumQuantity
FROM 
    Sales.SalesOrderDetail
GROUP BY 
    SalesOrderID;
