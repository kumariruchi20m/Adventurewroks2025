SELECT c.CustomerID, p.FirstName, p.LastName, t.Name AS TerritoryName, YEAR(soh.OrderDate) AS OrderYear, 
COUNT(soh.SalesOrderID) AS OrderCount, 
SUM(ISNULL(soh.TotalDue, 0)) AS TotalSpend, 
AVG(ISNULL(soh.TotalDue, 0)) AS AverageOrderValue 
FROM Sales.SalesOrderHeader soh INNER JOIN Sales.Customer c ON soh.CustomerID = 
c.CustomerID INNER JOIN Sales.SalesTerritory t ON soh.TerritoryID = 
t.TerritoryID INNER JOIN Person.Person p ON c.PersonID = 
p.BusinessEntityID WHERE soh.Status = 
5 GROUP BY c.CustomerID, p.FirstName, p.LastName, t.Name, 
YEAR(soh.OrderDate) HAVING SUM(soh.TotalDue) > 0 ORDER BY TotalSpend DESC;