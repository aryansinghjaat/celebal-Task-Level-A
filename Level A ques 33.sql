USE AdventureWorks2014;

SELECT DISTINCT 
    P.Name AS ProductName,
    PC.Name AS CategoryName
FROM 
    Purchasing.ProductVendor AS PV
JOIN 
    Production.Product AS P ON PV.ProductID = P.ProductID
JOIN 
    Production.ProductSubcategory AS PSC ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
JOIN 
    Production.ProductCategory AS PC ON PSC.ProductCategoryID = PC.ProductCategoryID
JOIN 
    Purchasing.Vendor AS V ON PV.BusinessEntityID = V.BusinessEntityID
WHERE 
    V.Name = 'Specialty Biscuits, Ltd.';
