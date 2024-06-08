use AdventureWorks2014

SELECT *
FROM Sales.SalesOrderHeader AS SOH
JOIN Sales.SalesOrderDetail AS SOD ON SOH.SalesOrderID = SOD.SalesOrderID
JOIN Person.Address AS A ON SOH.ShipToAddressID = A.AddressID
JOIN Person.StateProvince AS SP ON A.StateProvinceID = SP.StateProvinceID
JOIN Person.CountryRegion AS CR ON SP.CountryRegionCode = CR.CountryRegionCode
WHERE CR.Name = 'Canada';
