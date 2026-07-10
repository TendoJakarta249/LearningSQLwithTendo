--1
SELECT [ProductID] AS [Mã sản phẩm],
	   [ProductName] AS [Tên sản phẩm],
	   [UnitPrice]
FROM [dbo].[Products]
WHERE [UnitPrice] > =30

--2
SELECT DISTINCT [Country]
FROM [dbo].[Customers]
WHERE [ContactTitle] = 'Owner'

--3
SELECT TOP 10 [OrderID] AS [Mã đơn hàng],
[OrderDate] AS [Ngày đặt hàng]
FROM [dbo].[Orders]
ORDER BY [OrderDate] DESC

--4
SELECT [ProductName] AS [Sản phẩm],[UnitsInStock] AS "Tồn kho",  [CategoryID] AS "Mã nhóm"
FROM [dbo].[Products]
WHERE ([CategoryID]=1 OR [CategoryID]=3) AND [UnitsInStock]>0

--5
SELECT [EmployeeID] AS "Mã NV", [LastName] AS "Họ", [FirstName] AS "Tên"
FROM [dbo].[Employees]
WHERE [LastName] LIKE '%a%'

--6
SELECT [EmployeeID] , [LastName] , [FirstName] , [BirthDate]
FROM [dbo].[Employees]
WHERE [BirthDate] = (SELECT MIN([BirthDate]) FROM [dbo].[Employees])