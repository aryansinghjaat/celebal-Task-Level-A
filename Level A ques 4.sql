USE AdventureWorks2014;

SELECT 
    c.CustomerID
FROM 
    Sales.Customer AS c
    INNER JOIN Person.BusinessEntityAddress AS bea ON c.CustomerID = bea.BusinessEntityID
    INNER JOIN Person.Address AS p ON bea.AddressID = p.AddressID
    INNER JOIN Person.StateProvince AS sp ON p.StateProvinceID = sp.StateProvinceID
    INNER JOIN Person.CountryRegion AS cr ON sp.CountryRegionCode = cr.CountryRegionCode
WHERE 
    cr.Name IN ('United Kingdom', 'United States');



