USE AdventureWorks2014;

SELECT 
    PV.BusinessEntityID AS SupplierID,
    COUNT(PV.ProductID) AS NumberOfProductsOffered
FROM 
    Purchasing.ProductVendor AS PV
GROUP BY 
    PV.BusinessEntityID;
