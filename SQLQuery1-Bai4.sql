SELECT [CompanyName] AS [Tên công ty],
	   [PostalCode]	AS [Mã bưu điện],
	   [City] "Thành phố"
FROM [dbo].[Customers]

SELECT [LastName] AS [Họ],
	   [FirstName] AS [Tên]
FROM [dbo].[Employees]

SELECT DISTINCT TOP 15 O.*
FROM [dbo].[Orders] AS [O]

SELECT  TOP 5 
        p.[ProductName] AS [Tên sản phẩm],
		p.[SupplierID] AS [Mã nhà cung cấp],
		p.[CategoryID] AS  [Mã thể loại]
FROM [dbo].[Products] AS [p]
-- Tên_table.[Tên_cột]
-- SELECT DISTINCT TOP ...
