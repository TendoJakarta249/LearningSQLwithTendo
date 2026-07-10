--3
SELECT COUNT([OrderID]) AS [Number of Orders shipped to USA]
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'USA'

--4
SELECT SUM([UnitsOnOrder]) AS [Sum of products whose categogy 2]
FROM [dbo].[Products]
WHERE [CategoryID]=2

--5
SELECT [ProductID] AS "ID",
		[ProductName] AS "NAME",
		[UnitPrice] AS "PRICE"
FROM [dbo].[Products]
WHERE [UnitPrice] > (SELECT AVG([UnitPrice]) FROM [dbo].[Products])

-5.4
SELECT [ProductID] AS "ID",
		[ProductName] AS "NAME",
		[UnitPrice] AS "PRICE"
FROM [dbo].[Products]
WHERE [UnitPrice] > (SELECT AVG([UnitPrice]) FROM [dbo].[Products] WHERE [CategoryID] = 2)

