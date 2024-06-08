use AdventureWorks2014;


SELECT 
    c.CustomerID,
    p.FirstName,
    p.LastName    
FROM 
    Sales.Customer AS c
    INNER JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID;
    

