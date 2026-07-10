SELECT COUNT([ProductID]) AS [PRODUCTS NEEDED TO BUY MORE]
FROM [dbo].[Products]
WHERE [UnitsInStock]-[UnitsOnOrder]<0

SELECT [ProductID], [OrderID],
		([UnitPrice]*[Quantity]) AS [OrderDetailValue]
FROM [dbo].[Order Details]

SELECT [FirstName]
FROM [dbo].[Employees]
WHERE [FirstName] LIKE 'A%' AND [FirstName] NOT LIKE '%d%'