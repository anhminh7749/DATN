USE [WatchShop]
GO
ALTER TABLE [dbo].[WishList] DROP CONSTRAINT [FK_WishList_Product]
GO
ALTER TABLE [dbo].[WishList] DROP CONSTRAINT [FK_WishList_Customer]
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem] DROP CONSTRAINT [FK_ShoppingCart_CartItem_ShoppingCart]
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem] DROP CONSTRAINT [FK_ShoppingCart_CartItem_CartItem]
GO
ALTER TABLE [dbo].[ShoppingCart] DROP CONSTRAINT [FK_ShoppingCart_Customer]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_ProductDetail]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_ListImage]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Post] DROP CONSTRAINT [FK_Post_Product]
GO
ALTER TABLE [dbo].[Post] DROP CONSTRAINT [FK_Post_ListImage]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_StatusOrder]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Evaluate]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_DiscountCode]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Address]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_Post]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_Customer]
GO
ALTER TABLE [dbo].[Evaluate] DROP CONSTRAINT [FK_Evaluate_Product]
GO
ALTER TABLE [dbo].[Evaluate] DROP CONSTRAINT [FK_Evaluate_Customer]
GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_Address]
GO
ALTER TABLE [dbo].[CartItem] DROP CONSTRAINT [FK_CartItem_Product]
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WishList]') AND type in (N'U'))
DROP TABLE [dbo].[WishList]
GO
/****** Object:  Table [dbo].[StatusOrder]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatusOrder]') AND type in (N'U'))
DROP TABLE [dbo].[StatusOrder]
GO
/****** Object:  Table [dbo].[ShoppingCart_CartItem]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShoppingCart_CartItem]') AND type in (N'U'))
DROP TABLE [dbo].[ShoppingCart_CartItem]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShoppingCart]') AND type in (N'U'))
DROP TABLE [dbo].[ShoppingCart]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductDetail]') AND type in (N'U'))
DROP TABLE [dbo].[ProductDetail]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Post]') AND type in (N'U'))
DROP TABLE [dbo].[Post]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetail]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[ListImage]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListImage]') AND type in (N'U'))
DROP TABLE [dbo].[ListImage]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[Evaluate]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Evaluate]') AND type in (N'U'))
DROP TABLE [dbo].[Evaluate]
GO
/****** Object:  Table [dbo].[DiscountCode]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiscountCode]') AND type in (N'U'))
DROP TABLE [dbo].[DiscountCode]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CartItem]') AND type in (N'U'))
DROP TABLE [dbo].[CartItem]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type in (N'U'))
DROP TABLE [dbo].[Address]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/5/2022 12:03:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
USE [master]
GO
/****** Object:  Database [WatchShop]    Script Date: 10/5/2022 12:03:03 AM ******/
DROP DATABASE [WatchShop]
GO
/****** Object:  Database [WatchShop]    Script Date: 10/5/2022 12:03:03 AM ******/
CREATE DATABASE [WatchShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WatchShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WatchShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WatchShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WatchShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WatchShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WatchShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WatchShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WatchShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WatchShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WatchShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WatchShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [WatchShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WatchShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WatchShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WatchShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WatchShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WatchShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WatchShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WatchShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WatchShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WatchShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WatchShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WatchShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WatchShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WatchShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WatchShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WatchShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WatchShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WatchShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WatchShop] SET  MULTI_USER 
GO
ALTER DATABASE [WatchShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WatchShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WatchShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WatchShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WatchShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WatchShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WatchShop] SET QUERY_STORE = OFF
GO
ALTER AUTHORIZATION ON DATABASE::[WatchShop] TO [sa]
GO
USE [WatchShop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [bit] NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Account] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Address]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] NOT NULL,
	[YourName] [nvarchar](50) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[Wards] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Address] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [varchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Brand] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[Id] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[CartItem] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Category] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Birthday] [date] NOT NULL,
	[Status] [bit] NOT NULL,
	[AddressId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Customer] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[DiscountCode]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCode](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ReductionAmount] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ApplicableDate] [date] NOT NULL,
	[ExpirationDate] [date] NOT NULL,
	[ByteCode] [varchar](50) NOT NULL,
	[AmountApplied] [float] NOT NULL,
 CONSTRAINT [PK_DiscountCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[DiscountCode] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Evaluate]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluate](
	[Id] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Point] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Image] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Evaluate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Evaluate] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] NOT NULL,
	[NameCustomer] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[PostId] [int] NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Feedback] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ListImage]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListImage](
	[Id] [int] NOT NULL,
	[img1] [varchar](50) NOT NULL,
	[img2] [varchar](50) NULL,
	[img3] [varchar](50) NULL,
	[img4] [varchar](50) NULL,
	[img5] [varchar](50) NULL,
 CONSTRAINT [PK_ListImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ListImage] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[ShippingAmount] [float] NOT NULL,
	[Amount] [float] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ShippingAddressId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[DiscountCodeId] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Order] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[OrderDetail] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Post]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[PostedDate] [date] NOT NULL,
	[Banner] [varchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ShortDescription] [nvarchar](max) NOT NULL,
	[ImageId] [int] NULL,
	[ProductId] [int] NOT NULL,
	[poster] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Post] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Price] [float] NOT NULL,
	[SalePrice] [float] NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreateAt] [date] NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ImageId] [int] NULL,
	[BrandId] [int] NOT NULL,
	[Thumbnail] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
	[ProductDetailId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Product] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ProductDetail] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ShoppingCart] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ShoppingCart_CartItem]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart_CartItem](
	[CartItemId] [int] NOT NULL,
	[ShoppingCartId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ShoppingCart_CartItem] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[StatusOrder]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOrder](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_StatusOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[StatusOrder] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 10/5/2022 12:03:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList](
	[Id] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[InsertDate] [date] NOT NULL,
 CONSTRAINT [PK_WishList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[WishList] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Product]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Address]
GO
ALTER TABLE [dbo].[Evaluate]  WITH CHECK ADD  CONSTRAINT [FK_Evaluate_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Evaluate] CHECK CONSTRAINT [FK_Evaluate_Customer]
GO
ALTER TABLE [dbo].[Evaluate]  WITH CHECK ADD  CONSTRAINT [FK_Evaluate_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Evaluate] CHECK CONSTRAINT [FK_Evaluate_Product]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Customer]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Post]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Address] FOREIGN KEY([ShippingAddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Address]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_DiscountCode] FOREIGN KEY([DiscountCodeId])
REFERENCES [dbo].[DiscountCode] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_DiscountCode]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Evaluate] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Evaluate] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Evaluate]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_StatusOrder] FOREIGN KEY([StatusId])
REFERENCES [dbo].[StatusOrder] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_StatusOrder]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_ListImage] FOREIGN KEY([ImageId])
REFERENCES [dbo].[ListImage] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_ListImage]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([Id])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Id])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ListImage] FOREIGN KEY([Id])
REFERENCES [dbo].[ListImage] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ListImage]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductDetail] FOREIGN KEY([Id])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductDetail]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Customer] FOREIGN KEY([UserId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_Customer]
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_CartItem_CartItem] FOREIGN KEY([CartItemId])
REFERENCES [dbo].[CartItem] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem] CHECK CONSTRAINT [FK_ShoppingCart_CartItem_CartItem]
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_CartItem_ShoppingCart] FOREIGN KEY([ShoppingCartId])
REFERENCES [dbo].[ShoppingCart] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem] CHECK CONSTRAINT [FK_ShoppingCart_CartItem_ShoppingCart]
GO
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [FK_WishList_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [FK_WishList_Customer]
GO
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [FK_WishList_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [FK_WishList_Product]
GO
USE [master]
GO
ALTER DATABASE [WatchShop] SET  READ_WRITE 
GO
