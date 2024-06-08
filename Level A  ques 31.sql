USE AdventureWorks2014;

SELECT 
    DISTINCT A.PostalCode
FROM 
    Sales.SalesOrderDetail AS SOD
JOIN 
    Sales.SalesOrderHeader AS SOH ON SOD.SalesOrderID = SOH.SalesOrderID
JOIN 
    Person.Address AS A ON SOH.ShipToAddressID = A.AddressID
JOIN 
    Production.Product AS P ON SOD.ProductID = P.ProductID
WHERE 
    P.Name = 'Tofu';
