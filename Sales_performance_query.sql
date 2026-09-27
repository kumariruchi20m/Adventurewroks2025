select * from Person.Person
Select p.FirstName, p.lastname,s.SalesQuota,S.SalesYTD FROM person.Person p INNER JOIN Sales.Salesperson s ON p.BusinessEntityID = s.BusinessEntityID