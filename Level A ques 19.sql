use AdventureWorks2014

SELECT SOH.SalesOrderID, SUM(SOD.LineTotal) AS OrderTotal
FROM Sales.SalesOrderHeader AS SOH
JOIN Sales.SalesOrderDetail AS SOD ON SOH.SalesOrderID = SOD.SalesOrderID
GROUP BY SOH.SalesOrderID
HAVING SUM(SOD.LineTotal) > 200;
