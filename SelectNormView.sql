SELECT A.*,ShipToAddressID,BillToAddressID,E.CustomerID,F.ProductID
FROM [STLight].[SalesLT].[SalesOrderDetail] A
LEFT JOIN [STLight].[SalesLT].[SalesOrderHeader] B ON A.SalesOrderID = B.SalesOrderID
LEFT JOIN [STLight].[SalesLT].[Address] C ON B.ShipToAddressID = C.AddressID
LEFT JOIN [STLight].[SalesLT].[Address] D ON B.BillToAddressID = D.AddressID
LEFT JOIN [STLight].[SalesLT].[Customer] E ON B.CustomerID = E.CustomerID
LEFT JOIN [STLight].[SalesLT].[Product] F ON A.ProductID = F.ProductID




