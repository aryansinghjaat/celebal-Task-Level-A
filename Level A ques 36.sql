USE AdventureWorks2014;

SELECT 
    CR.Name AS CountryName,
    SUM(SOH.TotalDue) AS TotalSales
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    Sales.Customer AS C ON SOH.CustomerID = C.CustomerID
JOIN 
    Person.Address AS A ON SOH.ShipToAddressID = A.AddressID
JOIN 
    Person.StateProvince AS SP ON A.StateProvinceID = SP.StateProvinceID
JOIN 
    Person.CountryRegion AS CR ON SP.CountryRegionCode = CR.CountryRegionCode
GROUP BY 
    CR.Name
ORDER BY 
    SUM(SOH.TotalDue) DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
