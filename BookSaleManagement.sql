USE [master]
GO
/****** Object:  Database [DBBookSaleManagement]    Script Date: 05/08/2015 20:45:27 ******/
CREATE DATABASE [DBBookSaleManagement] ON  PRIMARY 
( NAME = N'DBBookSaleManagement', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DBBookSaleManagement.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBBookSaleManagement_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DBBookSaleManagement_log.ldf' , SIZE = 3840KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBBookSaleManagement] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBBookSaleManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBBookSaleManagement] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET ARITHABORT OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DBBookSaleManagement] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DBBookSaleManagement] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DBBookSaleManagement] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET  DISABLE_BROKER
GO
ALTER DATABASE [DBBookSaleManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DBBookSaleManagement] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DBBookSaleManagement] SET  READ_WRITE
GO
ALTER DATABASE [DBBookSaleManagement] SET RECOVERY FULL
GO
ALTER DATABASE [DBBookSaleManagement] SET  MULTI_USER
GO
ALTER DATABASE [DBBookSaleManagement] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DBBookSaleManagement] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBBookSaleManagement', N'ON'
GO
USE [DBBookSaleManagement]
GO
/****** Object:  Table [dbo].[tbl_Warehouse]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Warehouse](
	[warehouseID] [varchar](2) NOT NULL,
	[warehouseCity] [varchar](10) NOT NULL,
	[warehousePhone] [varchar](11) NOT NULL,
	[rentCostPerMonth] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Warehouse] PRIMARY KEY CLUSTERED 
(
	[warehouseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_User](
	[userName] [varchar](20) NOT NULL,
	[userPassword] [varchar](40) NOT NULL,
	[userPurview] [varchar](10) NOT NULL,
	[firstLogin] [char](2) NOT NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Book]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Book](
	[bookID] [varchar](6) NOT NULL,
	[ISBN] [varchar](13) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[bookAuthor] [varchar](20) NOT NULL,
	[bookPublisher] [varchar](20) NOT NULL,
	[year] [numeric](4, 0) NOT NULL,
	[retailPrice] [numeric](5, 2) NULL,
	[importPrice] [numeric](5, 2) NULL,
	[profit] [numeric](5, 2) NULL,
	[profitRate] [float] NULL,
	[discountRate] [float] NULL,
 CONSTRAINT [PK_tbl_Book] PRIMARY KEY CLUSTERED 
(
	[bookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Information]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Information](
	[userName] [varchar](20) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[answer1] [varchar](32) NOT NULL,
	[answer2] [varchar](32) NOT NULL,
	[answer3] [varchar](32) NOT NULL,
 CONSTRAINT [PK_tbl_Information] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ImportList]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ImportList](
	[warehouseID] [varchar](2) NOT NULL,
	[bookID] [varchar](6) NOT NULL,
	[generateDateTime] [datetime] NOT NULL,
	[importPrice] [numeric](5, 2) NOT NULL,
	[importNumber] [int] NOT NULL,
	[status] [varchar](6) NOT NULL,
 CONSTRAINT [PK_tbl_ImportList] PRIMARY KEY CLUSTERED 
(
	[warehouseID] ASC,
	[bookID] ASC,
	[generateDateTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Finance]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Finance](
	[financeID] [varchar](20) NOT NULL,
	[amount] [float] NOT NULL,
	[financeType] [varchar](4) NOT NULL,
	[createdBy] [varchar](20) NOT NULL,
	[createdTime] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Finance] PRIMARY KEY CLUSTERED 
(
	[financeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Customer](
	[customerEmail] [varchar](20) NOT NULL,
	[customerName] [varchar](20) NOT NULL,
	[customerPhone] [varchar](11) NOT NULL,
	[customerAddress] [varchar](50) NOT NULL,
	[balance] [float] NOT NULL,
 CONSTRAINT [PK_tbl_Customer_1] PRIMARY KEY CLUSTERED 
(
	[customerEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Admin]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Admin](
	[adminUserName] [varchar](20) NOT NULL,
	[adminName] [varchar](20) NOT NULL,
	[jobID] [varchar](20) NOT NULL,
	[adminSex] [char](2) NOT NULL,
	[adminAge] [numeric](2, 0) NOT NULL,
	[adminType] [varchar](12) NOT NULL,
	[startDate] [date] NOT NULL,
	[salaryPerMonth] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Admin_1] PRIMARY KEY CLUSTERED 
(
	[adminUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Stocks]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Stocks](
	[warehouseID] [varchar](2) NOT NULL,
	[bookID] [varchar](6) NOT NULL,
	[soldAmount] [int] NOT NULL,
	[leftAmount] [int] NOT NULL,
	[minAmount] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Stocks] PRIMARY KEY CLUSTERED 
(
	[warehouseID] ASC,
	[bookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ShoppingBasket]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ShoppingBasket](
	[bookID] [varchar](6) NOT NULL,
	[warehouseID] [varchar](2) NOT NULL,
	[customerEmail] [varchar](20) NOT NULL,
	[basketNumber] [int] NOT NULL,
	[basketStatus] [varchar](6) NOT NULL,
 CONSTRAINT [PK_tbl_ShoppingBasket] PRIMARY KEY CLUSTERED 
(
	[bookID] ASC,
	[warehouseID] ASC,
	[customerEmail] ASC,
	[basketNumber] ASC,
	[basketStatus] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_OrderForm]    Script Date: 05/08/2015 20:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_OrderForm](
	[bookID] [varchar](6) NOT NULL,
	[customerEmail] [varchar](20) NOT NULL,
	[orderNumber] [int] NOT NULL,
	[paidTime] [datetime] NOT NULL,
	[orderStatus] [varchar](6) NOT NULL,
 CONSTRAINT [PK_tbl_OrderForm] PRIMARY KEY CLUSTERED 
(
	[bookID] ASC,
	[customerEmail] ASC,
	[orderNumber] ASC,
	[paidTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_tbl_User_firstLogin]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_User] ADD  CONSTRAINT [DF_tbl_User_firstLogin]  DEFAULT ('是') FOR [firstLogin]
GO
/****** Object:  Default [DF_tbl_ImportList_status]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_ImportList] ADD  CONSTRAINT [DF_tbl_ImportList_status]  DEFAULT ('未付款') FOR [status]
GO
/****** Object:  Check [CK_tbl_User]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_User]  WITH CHECK ADD  CONSTRAINT [CK_tbl_User] CHECK  (([userPurview]='超级管理员' OR [userPurview]='普通管理员' OR [userPurview]='顾客' AND [firstLogin]='是' OR [firstLogin]='否'))
GO
ALTER TABLE [dbo].[tbl_User] CHECK CONSTRAINT [CK_tbl_User]
GO
/****** Object:  Check [CK_tbl_ImportList]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_ImportList]  WITH CHECK ADD  CONSTRAINT [CK_tbl_ImportList] CHECK  (([importPrice]>=(0.0) AND [importNumber]>(0) AND ([status]='未付款' OR [status]='已付款' OR [status]='已退货')))
GO
ALTER TABLE [dbo].[tbl_ImportList] CHECK CONSTRAINT [CK_tbl_ImportList]
GO
/****** Object:  Check [CK_tbl_Finance]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_Finance]  WITH CHECK ADD  CONSTRAINT [CK_tbl_Finance] CHECK  (([financeType]='进账' OR [financeType]='出账'))
GO
ALTER TABLE [dbo].[tbl_Finance] CHECK CONSTRAINT [CK_tbl_Finance]
GO
/****** Object:  Check [CK_tbl_Customer]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_Customer]  WITH CHECK ADD  CONSTRAINT [CK_tbl_Customer] CHECK  (([balance]>=(0.00)))
GO
ALTER TABLE [dbo].[tbl_Customer] CHECK CONSTRAINT [CK_tbl_Customer]
GO
/****** Object:  Check [CK_tbl_Admin]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_Admin]  WITH CHECK ADD  CONSTRAINT [CK_tbl_Admin] CHECK  ((([adminType]='超级管理员' OR [adminType]='普通管理员') AND ([adminSex]='男' OR [adminSex]='女') AND [adminAge]>=(0) AND [salaryPerMonth]>=(0)))
GO
ALTER TABLE [dbo].[tbl_Admin] CHECK CONSTRAINT [CK_tbl_Admin]
GO
/****** Object:  Check [CK_tbl_Stocks]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_Stocks]  WITH CHECK ADD  CONSTRAINT [CK_tbl_Stocks] CHECK  (([soldAmount]>=(0) AND [leftAmount]>=(0) AND [minAmount]>=(0)))
GO
ALTER TABLE [dbo].[tbl_Stocks] CHECK CONSTRAINT [CK_tbl_Stocks]
GO
/****** Object:  Check [CK_tbl_ShoppingBasket]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_ShoppingBasket]  WITH CHECK ADD  CONSTRAINT [CK_tbl_ShoppingBasket] CHECK  (([basketStatus]='未付款' OR [basketStatus]='已付款' OR [basketStatus]='已删除'))
GO
ALTER TABLE [dbo].[tbl_ShoppingBasket] CHECK CONSTRAINT [CK_tbl_ShoppingBasket]
GO
/****** Object:  Check [CK_tbl_OrderForm]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_OrderForm]  WITH CHECK ADD  CONSTRAINT [CK_tbl_OrderForm] CHECK  (([orderStatus]='未出库' OR [orderStatus]='已出库' OR [orderStatus]='已送达'))
GO
ALTER TABLE [dbo].[tbl_OrderForm] CHECK CONSTRAINT [CK_tbl_OrderForm]
GO
/****** Object:  ForeignKey [FK_tbl_Information_tbl_User]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_Information]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Information_tbl_User] FOREIGN KEY([userName])
REFERENCES [dbo].[tbl_User] ([userName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Information] CHECK CONSTRAINT [FK_tbl_Information_tbl_User]
GO
/****** Object:  ForeignKey [FK_tbl_ImportList_tbl_Book]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_ImportList]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ImportList_tbl_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[tbl_Book] ([bookID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_ImportList] CHECK CONSTRAINT [FK_tbl_ImportList_tbl_Book]
GO
/****** Object:  ForeignKey [FK_tbl_ImportList_tbl_Warehouse]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_ImportList]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ImportList_tbl_Warehouse] FOREIGN KEY([warehouseID])
REFERENCES [dbo].[tbl_Warehouse] ([warehouseID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_ImportList] CHECK CONSTRAINT [FK_tbl_ImportList_tbl_Warehouse]
GO
/****** Object:  ForeignKey [FK_tbl_Finance_tbl_User]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_Finance]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Finance_tbl_User] FOREIGN KEY([createdBy])
REFERENCES [dbo].[tbl_User] ([userName])
GO
ALTER TABLE [dbo].[tbl_Finance] CHECK CONSTRAINT [FK_tbl_Finance_tbl_User]
GO
/****** Object:  ForeignKey [FK_tbl_Customer_tbl_User]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_Customer]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Customer_tbl_User] FOREIGN KEY([customerEmail])
REFERENCES [dbo].[tbl_User] ([userName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Customer] CHECK CONSTRAINT [FK_tbl_Customer_tbl_User]
GO
/****** Object:  ForeignKey [FK_tbl_Admin_tbl_User]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_Admin]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Admin_tbl_User] FOREIGN KEY([adminUserName])
REFERENCES [dbo].[tbl_User] ([userName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Admin] CHECK CONSTRAINT [FK_tbl_Admin_tbl_User]
GO
/****** Object:  ForeignKey [FK_tbl_Stocks_tbl_Book]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_Stocks]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Stocks_tbl_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[tbl_Book] ([bookID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Stocks] CHECK CONSTRAINT [FK_tbl_Stocks_tbl_Book]
GO
/****** Object:  ForeignKey [FK_tbl_Stocks_tbl_Warehouse]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_Stocks]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Stocks_tbl_Warehouse] FOREIGN KEY([warehouseID])
REFERENCES [dbo].[tbl_Warehouse] ([warehouseID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Stocks] CHECK CONSTRAINT [FK_tbl_Stocks_tbl_Warehouse]
GO
/****** Object:  ForeignKey [FK_tbl_ShoppingBasket_tbl_Book]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_ShoppingBasket]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ShoppingBasket_tbl_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[tbl_Book] ([bookID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_ShoppingBasket] CHECK CONSTRAINT [FK_tbl_ShoppingBasket_tbl_Book]
GO
/****** Object:  ForeignKey [FK_tbl_ShoppingBasket_tbl_Customer]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_ShoppingBasket]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ShoppingBasket_tbl_Customer] FOREIGN KEY([customerEmail])
REFERENCES [dbo].[tbl_Customer] ([customerEmail])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_ShoppingBasket] CHECK CONSTRAINT [FK_tbl_ShoppingBasket_tbl_Customer]
GO
/****** Object:  ForeignKey [FK_tbl_ShoppingBasket_tbl_Warehouse]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_ShoppingBasket]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ShoppingBasket_tbl_Warehouse] FOREIGN KEY([warehouseID])
REFERENCES [dbo].[tbl_Warehouse] ([warehouseID])
GO
ALTER TABLE [dbo].[tbl_ShoppingBasket] CHECK CONSTRAINT [FK_tbl_ShoppingBasket_tbl_Warehouse]
GO
/****** Object:  ForeignKey [FK_tbl_OrderForm_tbl_Book]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_OrderForm]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OrderForm_tbl_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[tbl_Book] ([bookID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_OrderForm] CHECK CONSTRAINT [FK_tbl_OrderForm_tbl_Book]
GO
/****** Object:  ForeignKey [FK_tbl_OrderForm_tbl_Customer]    Script Date: 05/08/2015 20:45:28 ******/
ALTER TABLE [dbo].[tbl_OrderForm]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OrderForm_tbl_Customer] FOREIGN KEY([customerEmail])
REFERENCES [dbo].[tbl_Customer] ([customerEmail])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_OrderForm] CHECK CONSTRAINT [FK_tbl_OrderForm_tbl_Customer]
GO
