use AdventureWorks2014;
SELECT 
    CR.Name AS Country,
    SUM(SOH.TotalDue) AS TotalSales
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    Person.Address AS A ON SOH.ShipToAddressID = A.AddressID
JOIN 
    Person.StateProvince AS SP ON A.StateProvinceID = SP.StateProvinceID
JOIN 
    Person.CountryRegion AS CR ON SP.CountryRegionCode = CR.CountryRegionCode
GROUP BY 
    CR.Name
ORDER BY 
    TotalSales DESC;
