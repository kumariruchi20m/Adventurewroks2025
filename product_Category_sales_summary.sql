SELECT pc.Name AS CategoryName, YEAR(soh.OrderDate) AS OrderYear, SUM(sod.LineTotal) AS TotalSales 
FROM Production.ProductCategory pc INNER JOIN Production.ProductSubcategory ps ON pc.ProductCategoryID = 
ps.ProductCategoryID INNER JOIN Production.Product p ON ps.ProductSubcategoryID = 
p.ProductSubcategoryID INNER JOIN Sales.SalesOrderDetail sod ON p.ProductID = 
sod.ProductID INNER JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = 
soh.SalesOrderID GROUP BY pc.Name, YEAR(soh.OrderDate) ORDER BY CategoryName, OrderYear;

