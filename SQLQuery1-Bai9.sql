SELECT [CustomerID],YEAR([OrderDate]) AS [Year], COUNT([OrderID]) AS [Total Orders]
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = 1997
GROUP BY [CustomerID], YEAR([OrderDate])

SELECT [CustomerID], COUNT([OrderID]) AS [Total Orders]
FROM [dbo].[Orders]
GROUP BY [CustomerID]
HAVING  COUNT([OrderID]) > 20
ORDER BY COUNT([OrderID]) DESC

SELECT [SupplierID], SUM([UnitsInStock]) AS [Totals in Stock], AVG([UnitPrice]) AS [Average Prices]
FROM [dbo].[Products]
GROUP BY [SupplierID]
HAVING SUM([UnitsInStock]) > 30 AND AVG([UnitPrice]) < 50

SELECT MONTH([ShippedDate]) AS [Month], SUM([Freight]) AS [Total Prices]
FROM [dbo].[Orders]
WHERE MONTH([ShippedDate]) IN (7,8,9,10,11,12) AND YEAR([ShippedDate]) = 1996
GROUP BY MONTH([ShippedDate])
ORDER BY MONTH([ShippedDate]) ASC

SELECT [ShipCity], COUNT([OrderID]) AS [Number of Orders]
FROM [dbo].[Orders]
GROUP BY [ShipCity]
HAVING COUNT([OrderID]) > 16
ORDER BY COUNT([OrderID]) DESC