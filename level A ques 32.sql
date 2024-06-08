USE AdventureWorks2014;

SELECT DISTINCT 
    P.Name AS ProductName
FROM 
    Sales.SalesOrderDetail AS SOD
JOIN 
    Sales.SalesOrderHeader AS SOH ON SOD.SalesOrderID = SOH.SalesOrderID
JOIN 
    Person.Address AS A ON SOH.ShipToAddressID = A.AddressID
JOIN 
    Production.Product AS P ON SOD.ProductID = P.ProductID
JOIN 
    Person.StateProvince AS SP ON A.StateProvinceID = SP.StateProvinceID
JOIN 
    Person.CountryRegion AS CR ON SP.CountryRegionCode = CR.CountryRegionCode
WHERE 
    CR.Name = 'France';
