USE [PRN221_Fall23_3W_WareHouseManagement]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryCode], [Name], [Status]) VALUES (1, N'CAT001', N'Đồ điện tử', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryCode], [Name], [Status]) VALUES (2, N'CAT002', N'Điện thoại di động', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryCode], [Name], [Status]) VALUES (3, N'CAT003', N'Điện gia dụng', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[StorageArea] ON 

INSERT [dbo].[StorageArea] ([AreaId], [AreaCode], [AreaName], [Status]) VALUES (1, N'AREA001', N'Kho A', 1)
INSERT [dbo].[StorageArea] ([AreaId], [AreaCode], [AreaName], [Status]) VALUES (2, N'AREA002', N'Kho B', 1)
INSERT [dbo].[StorageArea] ([AreaId], [AreaCode], [AreaName], [Status]) VALUES (3, N'AREA003', N'Kho C', 1)
SET IDENTITY_INSERT [dbo].[StorageArea] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [CategoryId], [AreaId], [ProductCode], [Name], [Quantity], [Status]) VALUES (1, 1, 1, N'PROD001', N'Tivi LED Samsung 50 inch', 20, 1)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [AreaId], [ProductCode], [Name], [Quantity], [Status]) VALUES (2, 2, 2, N'PROD002', N'Điện thoại iPhone 12', 15, 1)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [AreaId], [ProductCode], [Name], [Quantity], [Status]) VALUES (3, 3, 3, N'PROD003', N'Máy giặt Electrolux', 30, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountId], [AccountCode], [Email], [Name], [Password], [Role], [Phone], [Status]) VALUES (1, N'ACC001', N'anh@gmail.com', N'Nguyễn Văn Anh', N'1', 1, N'0987654321', 1)
INSERT [dbo].[Account] ([AccountId], [AccountCode], [Email], [Name], [Password], [Role], [Phone], [Status]) VALUES (2, N'ACC002', N'thanh@gmail.com', N'Lê Thị Thanh', N'2', 2, N'0912834756', 1)
INSERT [dbo].[Account] ([AccountId], [AccountCode], [Email], [Name], [Password], [Role], [Phone], [Status]) VALUES (3, N'ACC003', N'binh@gmail.com', N'Trần Văn Bình', N'3', 1, N'0912345678', 1)
INSERT [dbo].[Account] ([AccountId], [AccountCode], [Email], [Name], [Password], [Role], [Phone], [Status]) VALUES (6, N'ACC004', N'admin@gmail.com', N'Admin', N'4', 0, N'0971226789', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([PartnerId], [PartnerCode], [Name], [Status]) VALUES (1, N'PART001', N'Công ty TNHH Thương mại và Xuất nhập khẩu Đại Đồng', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerCode], [Name], [Status]) VALUES (2, N'PART002', N'Công ty Cổ phần Thương mại và Xuất nhập khẩu Bách Hợp', 1)
INSERT [dbo].[Partner] ([PartnerId], [PartnerCode], [Name], [Status]) VALUES (3, N'PART003', N'Công ty TNHH Thương mại và Xuất nhập khẩu Điện tử - Gia dụng Minh Quang', 1)
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[Lot] ON 

INSERT [dbo].[Lot] ([LotId], [AccountId], [PartnerId], [LotCode], [DateIn], [Note], [Status]) VALUES (1, 1, 1, N'LOT001', CAST(N'2023-01-01' AS Date), NULL, 1)
INSERT [dbo].[Lot] ([LotId], [AccountId], [PartnerId], [LotCode], [DateIn], [Note], [Status]) VALUES (2, 2, 2, N'LOT002', CAST(N'2023-02-01' AS Date), NULL, 1)
INSERT [dbo].[Lot] ([LotId], [AccountId], [PartnerId], [LotCode], [DateIn], [Note], [Status]) VALUES (3, 3, 3, N'LOT003', CAST(N'2023-03-01' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[Lot] OFF
GO
SET IDENTITY_INSERT [dbo].[StockOut] ON 

INSERT [dbo].[StockOut] ([StockOutId], [AccountId], [PartnerId], [DateOut], [Note], [Status]) VALUES (1, 1, 1, CAST(N'2023-01-15' AS Date), NULL, 1)
INSERT [dbo].[StockOut] ([StockOutId], [AccountId], [PartnerId], [DateOut], [Note], [Status]) VALUES (2, 2, 2, CAST(N'2023-02-15' AS Date), NULL, 1)
INSERT [dbo].[StockOut] ([StockOutId], [AccountId], [PartnerId], [DateOut], [Note], [Status]) VALUES (3, 3, 3, CAST(N'2023-03-15' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[StockOut] OFF
GO
SET IDENTITY_INSERT [dbo].[LotDetail] ON 

INSERT [dbo].[LotDetail] ([LotDetailId], [LotId], [ProductId], [PartnerId], [Quantity], [Status]) VALUES (1, 1, 1, 1, 15, 1)
INSERT [dbo].[LotDetail] ([LotDetailId], [LotId], [ProductId], [PartnerId], [Quantity], [Status]) VALUES (2, 2, 2, 2, 10, 1)
INSERT [dbo].[LotDetail] ([LotDetailId], [LotId], [ProductId], [PartnerId], [Quantity], [Status]) VALUES (3, 3, 3, 3, 20, 1)
SET IDENTITY_INSERT [dbo].[LotDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[StockOutDetail] ON 

INSERT [dbo].[StockOutDetail] ([StockOutDetailId], [ProductId], [StockOutId], [Quantity]) VALUES (1, 1, 1, 10)
INSERT [dbo].[StockOutDetail] ([StockOutDetailId], [ProductId], [StockOutId], [Quantity]) VALUES (2, 2, 1, 5)
INSERT [dbo].[StockOutDetail] ([StockOutDetailId], [ProductId], [StockOutId], [Quantity]) VALUES (3, 3, 2, 8)
SET IDENTITY_INSERT [dbo].[StockOutDetail] OFF
GO
