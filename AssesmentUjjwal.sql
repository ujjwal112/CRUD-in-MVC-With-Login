USE [master]
GO
/****** Object:  Database [AssesmentUjjwal]    Script Date: 02-07-2020 11:46:48 AM ******/
CREATE DATABASE [AssesmentUjjwal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AssesmentUjjwal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLCELECT\MSSQL\DATA\AssesmentUjjwal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AssesmentUjjwal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLCELECT\MSSQL\DATA\AssesmentUjjwal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AssesmentUjjwal] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AssesmentUjjwal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AssesmentUjjwal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET ARITHABORT OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AssesmentUjjwal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AssesmentUjjwal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AssesmentUjjwal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AssesmentUjjwal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AssesmentUjjwal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AssesmentUjjwal] SET  MULTI_USER 
GO
ALTER DATABASE [AssesmentUjjwal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AssesmentUjjwal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AssesmentUjjwal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AssesmentUjjwal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AssesmentUjjwal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AssesmentUjjwal] SET QUERY_STORE = OFF
GO
USE [AssesmentUjjwal]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [AssesmentUjjwal]
GO
/****** Object:  Table [dbo].[AU_TL_LoginDeatils]    Script Date: 02-07-2020 11:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AU_TL_LoginDeatils](
	[aUserId] [int] IDENTITY(1,1) NOT NULL,
	[vUserName] [varchar](50) NOT NULL,
	[nvPassword] [nvarchar](15) NOT NULL,
	[bActive] [bit] NULL,
	[bDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[aUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AU_TL_UserDetails]    Script Date: 02-07-2020 11:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AU_TL_UserDetails](
	[aUserId] [int] IDENTITY(1,1) NOT NULL,
	[vUserId] [varchar](30) NOT NULL,
	[vFullName] [varchar](50) NOT NULL,
	[vMobile] [varchar](15) NOT NULL,
	[iAge] [int] NOT NULL,
	[iSalary] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[aUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AU_TL_LoginDeatils] ON 

INSERT [dbo].[AU_TL_LoginDeatils] ([aUserId], [vUserName], [nvPassword], [bActive], [bDeleted]) VALUES (1, N'admin', N'admin', 1, 0)
SET IDENTITY_INSERT [dbo].[AU_TL_LoginDeatils] OFF
SET IDENTITY_INSERT [dbo].[AU_TL_UserDetails] ON 

INSERT [dbo].[AU_TL_UserDetails] ([aUserId], [vUserId], [vFullName], [vMobile], [iAge], [iSalary]) VALUES (1, N'CEL19004', N'Ujjwal Gupta', N'8574859625', 21, 18000)
INSERT [dbo].[AU_TL_UserDetails] ([aUserId], [vUserId], [vFullName], [vMobile], [iAge], [iSalary]) VALUES (2, N'CEL19003', N'Anuj Chauhan', N'8574526336', 23, 180000)
INSERT [dbo].[AU_TL_UserDetails] ([aUserId], [vUserId], [vFullName], [vMobile], [iAge], [iSalary]) VALUES (3, N'CEL19002', N'Vihaan Singh', N'7485963625', 21, 180000)
INSERT [dbo].[AU_TL_UserDetails] ([aUserId], [vUserId], [vFullName], [vMobile], [iAge], [iSalary]) VALUES (4, N'CEL19005', N'Vihaan Gupta', N'7485256369', 23, 18000)
INSERT [dbo].[AU_TL_UserDetails] ([aUserId], [vUserId], [vFullName], [vMobile], [iAge], [iSalary]) VALUES (5, N'CEL19006', N'Vikash Gupta', N'7485963625', 21, 18000)
SET IDENTITY_INSERT [dbo].[AU_TL_UserDetails] OFF
ALTER TABLE [dbo].[AU_TL_LoginDeatils] ADD  DEFAULT ((1)) FOR [bActive]
GO
ALTER TABLE [dbo].[AU_TL_LoginDeatils] ADD  DEFAULT ((0)) FOR [bDeleted]
GO
/****** Object:  StoredProcedure [dbo].[AU_SP_LoginValidate]    Script Date: 02-07-2020 11:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AU_SP_LoginValidate]
(
	@UserName VARCHAR(50),
	@Password NVARCHAR(15)
)
AS
SELECT vUserName FROM AU_TL_LoginDeatils WHERE vUserName=@UserName AND nvPassword=@Password AND bActive=1 AND bDeleted=0
GO
USE [master]
GO
ALTER DATABASE [AssesmentUjjwal] SET  READ_WRITE 
GO
