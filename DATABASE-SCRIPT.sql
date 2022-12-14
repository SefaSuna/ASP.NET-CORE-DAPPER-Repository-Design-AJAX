USE [master]
GO
/****** Object:  Database [Biletleme]    Script Date: 21.09.2022 18:36:56 ******/
CREATE DATABASE [Biletleme]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Biletleme', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Biletleme.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Biletleme_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Biletleme_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Biletleme] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Biletleme].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Biletleme] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Biletleme] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Biletleme] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Biletleme] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Biletleme] SET ARITHABORT OFF 
GO
ALTER DATABASE [Biletleme] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Biletleme] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Biletleme] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Biletleme] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Biletleme] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Biletleme] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Biletleme] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Biletleme] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Biletleme] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Biletleme] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Biletleme] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Biletleme] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Biletleme] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Biletleme] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Biletleme] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Biletleme] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Biletleme] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Biletleme] SET RECOVERY FULL 
GO
ALTER DATABASE [Biletleme] SET  MULTI_USER 
GO
ALTER DATABASE [Biletleme] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Biletleme] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Biletleme] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Biletleme] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Biletleme] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Biletleme', N'ON'
GO
ALTER DATABASE [Biletleme] SET QUERY_STORE = OFF
GO
USE [Biletleme]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 21.09.2022 18:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerSurname] [nvarchar](50) NULL,
	[CustomerBirthday] [date] NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[MailAddress] [nvarchar](50) NULL,
	[RegistrationDate] [date] NULL,
	[Gender] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]
INSERT INTO [dbo].[Customers]
           ([CustomerName]
           ,[CustomerSurname]
           ,[CustomerBirthday]
           ,[PhoneNumber]
           ,[MailAddress]
           ,[RegistrationDate]
           ,[Gender]
           ,[Status])
     VALUES
           ('SEFA','SUNA','09.02.1996','05364717436','sefasuna@gmail.com','08.02.2021','Male','On')
	INSERT INTO [dbo].[Customers]
           ([CustomerName]
           ,[CustomerSurname]
           ,[CustomerBirthday]
           ,[PhoneNumber]
           ,[MailAddress]
           ,[RegistrationDate]
           ,[Gender]
           ,[Status])
     VALUES
           ('KAAN','AY','07.02.1995','05358757436','kaana@gmail.com','08.08.2021','Male','Of')
	INSERT INTO [dbo].[Customers]
           ([CustomerName]
           ,[CustomerSurname]
           ,[CustomerBirthday]
           ,[PhoneNumber]
           ,[MailAddress]
           ,[RegistrationDate]
           ,[Gender]
           ,[Status])
     VALUES
           ('SELİN','TUN','09.02.1993','05324715436','sln@gmail.com','01.02.2022','Female','On')
	INSERT INTO [dbo].[Customers]
           ([CustomerName]
           ,[CustomerSurname]
           ,[CustomerBirthday]
           ,[PhoneNumber]
           ,[MailAddress]
           ,[RegistrationDate]
           ,[Gender]
           ,[Status])
     VALUES
           ('AYSU','SAN','09.02.1987','05356787436','aysı@gmail.com','08.02.2021','Female','Of')
	

GO
USE [master]
GO
ALTER DATABASE [Biletleme] SET  READ_WRITE 
GO
