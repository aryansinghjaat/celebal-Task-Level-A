USE AdventureWorks2014;


SELECT 
    Manager.BusinessEntityID AS ManagerID,
    PersonManager.FirstName AS ManagerFirstName,
    PersonManager.LastName AS ManagerLastName,
    COUNT(Employee.BusinessEntityID) AS NumberOfReports
FROM 
    HumanResources.Employee AS Employee
    INNER JOIN HumanResources.Employee AS Manager ON Employee.OrganizationNode.GetAncestor(1) = Manager.OrganizationNode
    INNER JOIN Person.Person AS PersonManager ON Manager.BusinessEntityID = PersonManager.BusinessEntityID
GROUP BY 
    Manager.BusinessEntityID, 
    PersonManager.FirstName, 
    PersonManager.LastName
ORDER BY 
    NumberOfReports DESC;
