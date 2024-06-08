USE AdventureWorks2014;

SELECT 
    E.BusinessEntityID AS EmployeeID,
    CONCAT(P.FirstName, ' ', P.LastName) AS EmployeeName,
    COUNT(SOH.SalesOrderID) AS NumberOfOrders
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    Sales.Customer AS C ON SOH.CustomerID = C.CustomerID
JOIN 
    HumanResources.Employee AS E ON SOH.SalesPersonID = E.BusinessEntityID
JOIN 
    Person.Person AS P ON E.BusinessEntityID = P.BusinessEntityID
WHERE 
    C.CustomerID >= 'A' AND C.CustomerID <= 'AO'
GROUP BY 
    E.BusinessEntityID, P.FirstName, P.LastName
ORDER BY 
    NumberOfOrders DESC;
