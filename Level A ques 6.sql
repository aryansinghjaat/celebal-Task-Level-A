USE AdventureWorks2014;

SELECT 
    ProductID,
    Name    
FROM 
    Production.Product
WHERE 
    Name LIKE 'A%'
ORDER BY 
    Name;
