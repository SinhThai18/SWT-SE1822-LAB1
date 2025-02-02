CREATE DATABASE MyProject
USE [MyProject]

GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/7/2024 5:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [nchar](10) NOT NULL,
	[location] [nvarchar](50) NOT NULL,
	[roleID] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/7/2024 5:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/7/2024 5:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetaiID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[UserID] [int] NOT NULL,
	[LocationOrder] [nvarchar](max) NOT NULL,
	[status] [int] NOT NULL,
	[comment] [nvarchar](max) NULL,
	[PayMethodID] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 3/7/2024 5:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderDetailD] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quanity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayMethod]    Script Date: 3/7/2024 5:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayMethod](
	[PayID] [int] NOT NULL,
	[PayName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PayMethod] PRIMARY KEY CLUSTERED 
(
	[PayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/7/2024 5:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](50) NOT NULL,
	[price] [float] NULL,
	[img] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[categoryID] [int] NOT NULL,
	[saleID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/7/2024 5:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[roleID] [int] NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 3/7/2024 5:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[saleID] [int] NOT NULL,
	[salePersen] [int] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[saleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([userID], [username], [password], [fullName], [email], [phone], [location], [roleID]) VALUES (1, N'DatLd', N'123456', N'Lê Đức Đạt', N'datld@gmail.com', N'0913540430', N'Hải Phòng', 0)
INSERT [dbo].[Account] ([userID], [username], [password], [fullName], [email], [phone], [location], [roleID]) VALUES (2, N'janeDoe', N'password456', N'Trần Thị B', N'janedoe@example.com', N'0987654321', N'Hà Nội', 0)
INSERT [dbo].[Account] ([userID], [username], [password], [fullName], [email], [phone], [location], [roleID]) VALUES (3, N'guestUser', N'guestpass', N'Lê C', N'guest@example.com', N'1122334455', N'Đà Nẵng', 0)
INSERT [dbo].[Account] ([userID], [username], [password], [fullName], [email], [phone], [location], [roleID]) VALUES (6, N'user', N'123456', N'Hoang Gia Trong', N'tronghghe173256@fpt.edu.vn', N'0913540432', N'Hải Phòng', 0)
INSERT [dbo].[Account] ([userID], [username], [password], [fullName], [email], [phone], [location], [roleID]) VALUES (7, N'Admin', N'123', N'Pham Dan Truong', N'truongndhe176687@fpt.edu.vn', N'0397139645', N'Hà Nam', 1)
INSERT [dbo].[Account] ([userID], [username], [password], [fullName], [email], [phone], [location], [roleID]) VALUES (8, N'soicodon', N'123456', N'Uchiha Itachi', N'pntlam12g03@gmail.com', N'0987654321', N'Hải Phòng', 0)
INSERT [dbo].[Account] ([userID], [username], [password], [fullName], [email], [phone], [location], [roleID]) VALUES (12, N'lamdeptrai2706', N'123456', N'Lee Jong Suck', N'lamlam276762@gmail.com', N'1222223333', N'TP Hồ Chí Minh', 0)
INSERT [dbo].[Account] ([userID], [username], [password], [fullName], [email], [phone], [location], [roleID]) VALUES (16, N'namtt', N'123', N'Uchiha Itachi', N'buitiendat0306@gmail.com', N'2342343536', N'Hà Nam', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (1, N'iphone')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (2, N'SamSung')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (3, N'Redmi')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (4, N'Nokia')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (5, N'Oppo')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderDetaiID], [OrderDate], [UserID], [LocationOrder], [status], [comment], [PayMethodID]) VALUES (1, CAST(N'2024-03-06' AS Date), 6, N'Hoa Lu Ninh Binh', 1, NULL, 2)
INSERT [dbo].[OrderDetail] ([OrderDetaiID], [OrderDate], [UserID], [LocationOrder], [status], [comment], [PayMethodID]) VALUES (2, CAST(N'2024-03-06' AS Date), 12, N'Hoa Lu Ninh Binh', 0, NULL, 1)
INSERT [dbo].[OrderDetail] ([OrderDetaiID], [OrderDate], [UserID], [LocationOrder], [status], [comment], [PayMethodID]) VALUES (3, CAST(N'2024-03-06' AS Date), 6, N'Quynh Phu - Thai Binh', 1, N'đơn hàng đã xử lí', 2)
INSERT [dbo].[OrderDetail] ([OrderDetaiID], [OrderDate], [UserID], [LocationOrder], [status], [comment], [PayMethodID]) VALUES (4, CAST(N'2024-03-06' AS Date), 6, N'Ninh Giang - Hải Dương', 0, NULL, 1)
INSERT [dbo].[OrderDetail] ([OrderDetaiID], [OrderDate], [UserID], [LocationOrder], [status], [comment], [PayMethodID]) VALUES (5, CAST(N'2024-03-06' AS Date), 6, N'Duy Tiên-Hà Nam', -1, NULL, 2)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
INSERT [dbo].[OrderItem] ([OrderDetailD], [ProductID], [Quanity]) VALUES (1, 1, 2)
INSERT [dbo].[OrderItem] ([OrderDetailD], [ProductID], [Quanity]) VALUES (2, 1, 2)
INSERT [dbo].[OrderItem] ([OrderDetailD], [ProductID], [Quanity]) VALUES (3, 1, 3)
INSERT [dbo].[OrderItem] ([OrderDetailD], [ProductID], [Quanity]) VALUES (3, 5, 2)
INSERT [dbo].[OrderItem] ([OrderDetailD], [ProductID], [Quanity]) VALUES (4, 1, 2)
INSERT [dbo].[OrderItem] ([OrderDetailD], [ProductID], [Quanity]) VALUES (4, 15, 2)
INSERT [dbo].[OrderItem] ([OrderDetailD], [ProductID], [Quanity]) VALUES (5, 1, 4)
INSERT [dbo].[OrderItem] ([OrderDetailD], [ProductID], [Quanity]) VALUES (2, 5, 2)
GO
INSERT [dbo].[PayMethod] ([PayID], [PayName]) VALUES (1, N'direct payment')
INSERT [dbo].[PayMethod] ([PayID], [PayName]) VALUES (2, N'transfer')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (1, N'Iphone 13 Pro', 1200, N'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture//Apro/Apro_product_27028/iphone-13-pro-m_main_193_1020.png.webp', N'Iphone 13 siêu vip pro', 1, 1)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (2, N'Samsung Galaxy S21', 1100, N'https://cdn.tgdd.vn/Products/Images/42/220833/samsung-galaxy-s21-tim-600x600.jpg', N'Samsung flagship', 2, 1)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (3, N'Redmi Note 10', 400, N'https://cdn.tgdd.vn/Products/Images/42/222758/xiaomi-redmi-note-10-thumb-white-200x200.jpg', N'Redmi giá trị tốt', 3, 5)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (4, N'Nokia 8.3', 700, N'https://cdn.tgdd.vn/Products/Images/42/219898/nokia-83-600x600-2-200x200.jpg', N'Nokia chất lượng', 4, 3)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (5, N'Oppo Find X3 Pro', 1000, N'https://cdn.tgdd.vn/Products/Images/42/232190/oppo-find-x3-pro-black-001-1-600x600.jpg', N'Oppo camera đỉnh cao', 5, 7)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (6, N'iPhone 12', 1000, N'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:80/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-12.png', N'iPhone m?nh m?', 1, 2)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (7, N'Samsung Galaxy A52', 600, N'https://cdn.tgdd.vn/Products/Images/42/228967/samsung-galaxy-a52-8gb-256gb-thumb-violet-600x600-200x200.jpg', N'Samsung giá trị', 2, 9)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (8, N'Redmi 9', 200, N'https://cdn.tgdd.vn/Products/Images/42/251476/xiaomi-redmi-9-activ-600x600.jpg', N'Redmi giá rẻ', 3, 3)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (9, N'Nokia 5.4', 300, N'https://cdn.tgdd.vn/Products/Images/42/231706/nokia-54-xanh-600x600-600x600.jpg', N'Nokia hiệu suất cao', 4, 6)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (10, N'iPhone 15', 500, N'https://cdn.viettelstore.vn/Images/Product/ProductImage/835866839.jpeg', N'iPhone giá trị', 1, 8)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (11, N'Samsung Galaxy M32', 350, N'https://cdn.tgdd.vn/Products/Images/42/237634/samsung-galaxy-m32-1-600x600.jpg', N'Samsung hiệu suất', 2, 4)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (12, N'Redmi Note 9', 250, N'https://cdn.tgdd.vn/Products/Images/42/230765/xiaomi-redmi-note-9-5g-600x600-600x600.jpg', N'Redmi phổ thông', 3, 2)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (13, N'Nokia 2.4', 150, N'https://cdn.tgdd.vn/Products/Images/42/226218/nokia-24-xam-600x600.jpg', N'Nokia giá rẻ', 4, 0)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (14, N'Oppo A74', 450, N'https://cdn.tgdd.vn/Products/Images/42/235653/oppo-a74-black-9-200x200.jpg', N'Oppo hiệu năng cao', 5, 7)
INSERT [dbo].[Product] ([productID], [productName], [price], [img], [description], [categoryID], [saleID]) VALUES (15, N'iPhone 14 pro max', 900, N'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MPU73_AV1?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1678830616053', N'iPhone đa nhiệm', 1, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Roles] ([roleID], [roleName]) VALUES (0, N'User')
INSERT [dbo].[Roles] ([roleID], [roleName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[Sale] ([saleID], [salePersen]) VALUES (0, 0)
INSERT [dbo].[Sale] ([saleID], [salePersen]) VALUES (1, 10)
INSERT [dbo].[Sale] ([saleID], [salePersen]) VALUES (2, 20)
INSERT [dbo].[Sale] ([saleID], [salePersen]) VALUES (3, 30)
INSERT [dbo].[Sale] ([saleID], [salePersen]) VALUES (4, 40)
INSERT [dbo].[Sale] ([saleID], [salePersen]) VALUES (5, 50)
INSERT [dbo].[Sale] ([saleID], [salePersen]) VALUES (6, 60)
INSERT [dbo].[Sale] ([saleID], [salePersen]) VALUES (7, 70)
INSERT [dbo].[Sale] ([saleID], [salePersen]) VALUES (8, 80)
INSERT [dbo].[Sale] ([saleID], [salePersen]) VALUES (9, 90)
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_status]  DEFAULT ((-1)) FOR [status]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Role] FOREIGN KEY([roleID])
REFERENCES [dbo].[Roles] ([roleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Role]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([userID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Account]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_OrderDetail-PayMethod] FOREIGN KEY([PayMethodID])
REFERENCES [dbo].[PayMethod] ([PayID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_OrderDetail-PayMethod]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_OrderDetail1] FOREIGN KEY([OrderDetailD])
REFERENCES [dbo].[OrderDetail] ([OrderDetaiID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_OrderDetail1]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_sale] FOREIGN KEY([saleID])
REFERENCES [dbo].[Sale] ([saleID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_sale]
GO
