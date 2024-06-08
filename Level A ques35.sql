USE AdventureWorks2014;

SELECT 
    P.Name AS ProductName,
    SUM(PS.StockQty) AS UnitsInStock,
    SUM(SOD.OrderQty - SOD.OrderQty) AS UnitsOnOrder
FROM 
    Production.Product AS P
LEFT JOIN (
    SELECT 
        ProductID,
        SUM(OrderQty) AS StockQty
    FROM 
        Sales.SalesOrderDetail
    GROUP BY 
        ProductID
) AS PS ON P.ProductID = PS.ProductID
LEFT JOIN 
    Sales.SalesOrderDetail AS SOD ON P.ProductID = SOD.ProductID
GROUP BY 
    P.ProductID, P.Name
HAVING 
    SUM(PS.StockQty) < 10
    AND SUM(SOD.OrderQty - SOD.OrderQty) = 0;
