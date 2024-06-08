USE AdventureWorks2014;

SELECT 
    E.BusinessEntityID AS EmployeeID,
    
    SUM(SOH.TotalDue) AS TotalSales
FROM 
    HumanResources.Employee AS E
JOIN 
    Sales.SalesOrderHeader AS SOH ON E.BusinessEntityID = SOH.SalesPersonID
GROUP BY 
    E.BusinessEntityID;
