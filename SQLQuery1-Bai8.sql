SELECT [SupplierID], AVG([UnitPrice]) AS [Average Price]
FROM [dbo].[Products]
GROUP BY [SupplierID]

SELECT [CategoryID], SUM([UnitsInStock]) AS [TotalStock]
FROM [dbo].[Products]
GROUP BY [CategoryID]

SELECT [ShipCountry],[ShipCity],
				MIN([Freight]) AS [Min Price],
				MAX([Freight]) AS [Max Price]
FROM [dbo].[Orders]
GROUP BY [ShipCity],[ShipCountry]

SELECT [Country], COUNT([EmployeeID]) AS [Number of employees]
FROM [dbo].[Employees]
GROUP BY [Country]
