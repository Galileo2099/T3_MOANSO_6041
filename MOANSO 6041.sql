USE [master]
GO
/****** Object:  Database [MOANSO 6041]    Script Date: 28/10/2023 22:27:00 ******/
CREATE DATABASE [MOANSO 6041]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MOANSO 6041', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MOANSO 6041.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ),
( NAME = N'Roberth', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Roberth.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MOANSO 6041_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MOANSO 6041_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MOANSO 6041] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MOANSO 6041].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MOANSO 6041] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MOANSO 6041] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MOANSO 6041] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MOANSO 6041] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MOANSO 6041] SET ARITHABORT OFF 
GO
ALTER DATABASE [MOANSO 6041] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MOANSO 6041] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MOANSO 6041] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MOANSO 6041] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MOANSO 6041] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MOANSO 6041] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MOANSO 6041] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MOANSO 6041] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MOANSO 6041] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MOANSO 6041] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MOANSO 6041] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MOANSO 6041] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MOANSO 6041] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MOANSO 6041] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MOANSO 6041] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MOANSO 6041] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MOANSO 6041] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MOANSO 6041] SET RECOVERY FULL 
GO
ALTER DATABASE [MOANSO 6041] SET  MULTI_USER 
GO
ALTER DATABASE [MOANSO 6041] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MOANSO 6041] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MOANSO 6041] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MOANSO 6041] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MOANSO 6041] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MOANSO 6041] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MOANSO 6041', N'ON'
GO
ALTER DATABASE [MOANSO 6041] SET QUERY_STORE = ON
GO
ALTER DATABASE [MOANSO 6041] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MOANSO 6041]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 28/10/2023 22:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[razonSocial] [varchar](50) NULL,
	[idTipoCliente] [int] NULL,
	[estCliente] [bit] NULL,
	[fecRegCliente] [datetime] NULL,
	[idCiudad] [int] NULL,
 CONSTRAINT [PK_Table_clase] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (1, N'UPN', 1, 1, CAST(N'2023-10-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (2, N'UNT', 1, 1, CAST(N'2023-09-20T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (3, N'FerreteraSolano', 2, 0, CAST(N'2023-09-15T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (5, N'carsa', 5, 0, CAST(N'2023-10-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (6, N'waaaag', 1, 0, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (7, N'UPC', 1, 1, CAST(N'2023-10-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (8, N'Universidad tecnologica del Peru', 1, 0, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (9, N'Tecnologia Shark', 1, 0, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (10, N'Tecnologias Shark', 1, 0, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (11, N'Radio Shack', 1, 0, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (12, N'dsac', 1, 0, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (13, N'Ulala señor frances', 1, 0, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (14, N'Radio Shack', 1, 0, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (15, N'Compuplaza', 1, 1, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (16, N'Zona Gamer', 1, 1, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (17, N'GameStore', 949489777, 1, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [idTipoCliente], [estCliente], [fecRegCliente], [idCiudad]) VALUES (18, N'Radio Shak', 998556228, 0, CAST(N'2023-10-25T00:00:00.000' AS DateTime), 778953666)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
/****** Object:  StoredProcedure [dbo].[spDeshabilitaCliente]    Script Date: 28/10/2023 22:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[spDeshabilitaCliente]
(@idCliente int
)
as
begin
update Cliente set
estCliente = 0
where idCliente = @idCliente
end
GO
/****** Object:  StoredProcedure [dbo].[spEditaCliente]    Script Date: 28/10/2023 22:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[spEditaCliente]
(@idCliente int,
@razonSocial varchar(50),
@idTipoCliente int,
@fecRegCliente date,
@idCiudad int,
@estCliente bit
)
as
begin
update Cliente set
razonSocial = @razonSocial,
idTipoCliente = @idTipoCliente,
fecRegCliente = @fecRegCliente,
idCiudad=@idCiudad,
estCliente = @estCliente
where idCliente = @idCliente
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertaCliente]    Script Date: 28/10/2023 22:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Lote 2
CREATE PROCEDURE [dbo].[spInsertaCliente]
(
  @razonSocial varchar(50),
  @idTipoCliente int,
  @fecRegCliente date,
  @idCiudad int,
  @estCliente bit
)
AS
BEGIN
  INSERT INTO Cliente (razonSocial, idTipoCliente, fecRegCliente, idCiudad, estCliente)
  VALUES (@razonSocial, @idTipoCliente, @fecRegCliente, @idCiudad, @estCliente)
END
GO
/****** Object:  StoredProcedure [dbo].[spListaCliente]    Script Date: 28/10/2023 22:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaCliente]
AS
SELECT idCliente, razonSocial, idTipoCliente, fecRegCliente, idCiudad, estCliente
from Cliente
where estCliente='1'
GO
USE [master]
GO
ALTER DATABASE [MOANSO 6041] SET  READ_WRITE 
GO
