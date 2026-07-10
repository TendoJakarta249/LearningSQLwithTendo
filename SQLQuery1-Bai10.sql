--1
SELECT [CustomerID], COUNT([OrderID]) AS [Number of Orders]
FROM [dbo].[Orders]
GROUP BY [CustomerID]
HAVING COUNT([OrderID]) > 20
ORDER BY COUNT([OrderID]) DESC

--2
SELECT [EmployeeID], COUNT([OrderID]) AS [Total of Orders] 
FROM [dbo].[Orders] GROUP BY [EmployeeID] 
HAVING COUNT([OrderID])>=100 
ORDER BY COUNT([OrderID]) DESC