/****** Object:  Database [MOANSO 6041]    Script Date: 22/11/2023 12:43:02 ******/
CREATE DATABASE [MOANSO 6041-test]
GO
USE [MOANSO 6041-test]
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[estCliente] [bit] NULL,
	[fecRegCliente] [datetime] NULL,
	[Numero] [int] NULL,
	[razonSocial] [varchar](50) NULL,
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[idCiudad] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnostico]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnostico](
	[Desc_diagnostico] [varchar](50) NULL,
	[Fecha_diagnostico] [datetime] NULL,
	[DiagnosticoID] [int] IDENTITY(1,1) NOT NULL,
	[ClienteID] [int] NOT NULL,
	[TecnicoID] [int] NOT NULL,
 CONSTRAINT [PK_Diagnostico] PRIMARY KEY CLUSTERED 
(
	[DiagnosticoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gerente]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gerente](
	[Estgerente] [bit] NULL,
	[Fechareg_gerente] [datetime] NULL,
	[Nombre_gerente] [varchar](50) NULL,
	[Telefono_gerente] [varchar](50) NULL,
	[GerenteID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Gerente] PRIMARY KEY CLUSTERED 
(
	[GerenteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JefeDeAlmacen]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JefeDeAlmacen](
	[Est_jefeproduc] [bit] NULL,
	[Fechareg_jefeproduc] [datetime] NULL,
	[Nombre_jefeproduc] [varchar](50) NULL,
	[Telefono_jefeproduc] [varchar](50) NULL,
	[JefeDeAlmacenID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_JefeDeAlmacen] PRIMARY KEY CLUSTERED 
(
	[JefeDeAlmacenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenDeVenta]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenDeVenta](
	[Cantidad_product] [int] NULL,
	[OrdenDeVentaID] [int] IDENTITY(1,1) NOT NULL,
	[ClienteID] [int] NOT NULL,
	[TecnicoID] [int] NOT NULL,
	[VendedorID] [int] NOT NULL,
 CONSTRAINT [PK_OrdenDeVenta] PRIMARY KEY CLUSTERED 
(
	[OrdenDeVentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoDeProducto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoDeProducto](
	[Descripción] [varchar](50) NULL,
	[Fecha_pedidoproducto] [datetime] NULL,
	[PedidoDeProductoID] [int] IDENTITY(1,1) NOT NULL,
	[GerenteID] [int] NOT NULL,
 CONSTRAINT [PK_PedidoDeProducto] PRIMARY KEY CLUSTERED 
(
	[PedidoDeProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Estproducto] [bit] NULL,
	[Fecha_registro] [datetime] NULL,
	[Nombre] [varchar](50) NULL,
	[Precio] [money] NULL,
	[Stock] [int] NULL,
	[Tipo] [varchar](50) NULL,
	[ProductoID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoOrden de venta]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoOrden de venta](
	[OrdenDeVentaID] [int] NULL,
	[ProductoID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoPedido de Producto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoPedido de Producto](
	[PedidoDeProductoID] [int] NULL,
	[ProductoID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reporte de Ingreso Producto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporte de Ingreso Producto](
	[ProductoID] [int] NULL,
	[ReporteDeIngresoID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReporteDeIngreso]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReporteDeIngreso](
	[Fecha_reporteingreso] [datetime] NULL,
	[ReporteDeIngresoID] [int] IDENTITY(1,1) NOT NULL,
	[JefeDeAlmacenID] [int] NOT NULL,
 CONSTRAINT [PK_ReporteDeIngreso] PRIMARY KEY CLUSTERED 
(
	[ReporteDeIngresoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReporteDeSalida]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReporteDeSalida](
	[Desc_reportsalida] [varchar](1) NULL,
	[Estreportsalida] [varchar](1) NULL,
	[Fecha_reportsalida] [datetime] NULL,
	[ReporteDeSalidaID] [int] IDENTITY(1,1) NOT NULL,
	[JefeDeAlmacenID] [int] NOT NULL,
	[PedidoDeProductoID] [int] NOT NULL,
 CONSTRAINT [PK_ReporteDeSalida] PRIMARY KEY CLUSTERED 
(
	[ReporteDeSalidaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tecnico]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tecnico](
	[Estado_tecnico] [bit] NULL,
	[Fecha_regis_tecnico] [datetime] NULL,
	[Nombre_tecnico] [varchar](50) NULL,
	[TecnicoID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Tecnico] PRIMARY KEY CLUSTERED 
(
	[TecnicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor](
	[Estado_vendedor] [varchar](1) NULL,
	[Fecha_regis_vendedor] [datetime] NULL,
	[Nombre_vendedor] [varchar](1) NULL,
	[Telefono_vendedor] [varchar](1) NULL,
	[VendedorID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[VendedorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([estCliente], [fecRegCliente], [Numero], [razonSocial], [idCliente], [idCiudad]) VALUES (0, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1232435, N'Ron', 1, 1)
INSERT [dbo].[Cliente] ([estCliente], [fecRegCliente], [Numero], [razonSocial], [idCliente], [idCiudad]) VALUES (1, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 9948456, N'Breayam', 2, NULL)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
ALTER TABLE [dbo].[Diagnostico]  WITH CHECK ADD  CONSTRAINT [FK_Diagnostico_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Diagnostico] CHECK CONSTRAINT [FK_Diagnostico_Cliente]
GO
ALTER TABLE [dbo].[Diagnostico]  WITH CHECK ADD  CONSTRAINT [FK_Diagnostico_Tecnico] FOREIGN KEY([TecnicoID])
REFERENCES [dbo].[Tecnico] ([TecnicoID])
GO
ALTER TABLE [dbo].[Diagnostico] CHECK CONSTRAINT [FK_Diagnostico_Tecnico]
GO
ALTER TABLE [dbo].[OrdenDeVenta]  WITH CHECK ADD  CONSTRAINT [FK_OrdenDeVenta_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[OrdenDeVenta] CHECK CONSTRAINT [FK_OrdenDeVenta_Cliente]
GO
ALTER TABLE [dbo].[OrdenDeVenta]  WITH CHECK ADD  CONSTRAINT [FK_OrdenDeVenta_Tecnico] FOREIGN KEY([TecnicoID])
REFERENCES [dbo].[Tecnico] ([TecnicoID])
GO
ALTER TABLE [dbo].[OrdenDeVenta] CHECK CONSTRAINT [FK_OrdenDeVenta_Tecnico]
GO
ALTER TABLE [dbo].[OrdenDeVenta]  WITH CHECK ADD  CONSTRAINT [FK_OrdenDeVenta_Vendedor] FOREIGN KEY([VendedorID])
REFERENCES [dbo].[Vendedor] ([VendedorID])
GO
ALTER TABLE [dbo].[OrdenDeVenta] CHECK CONSTRAINT [FK_OrdenDeVenta_Vendedor]
GO
ALTER TABLE [dbo].[PedidoDeProducto]  WITH CHECK ADD  CONSTRAINT [FK_PedidoDeProducto_Gerente] FOREIGN KEY([GerenteID])
REFERENCES [dbo].[Gerente] ([GerenteID])
GO
ALTER TABLE [dbo].[PedidoDeProducto] CHECK CONSTRAINT [FK_PedidoDeProducto_Gerente]
GO
ALTER TABLE [dbo].[ProductoOrden de venta]  WITH CHECK ADD  CONSTRAINT [FK_ProductoOrden de venta_Orden de venta] FOREIGN KEY([OrdenDeVentaID])
REFERENCES [dbo].[OrdenDeVenta] ([OrdenDeVentaID])
GO
ALTER TABLE [dbo].[ProductoOrden de venta] CHECK CONSTRAINT [FK_ProductoOrden de venta_Orden de venta]
GO
ALTER TABLE [dbo].[ProductoOrden de venta]  WITH CHECK ADD  CONSTRAINT [FK_ProductoOrden de venta_Producto] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Producto] ([ProductoID])
GO
ALTER TABLE [dbo].[ProductoOrden de venta] CHECK CONSTRAINT [FK_ProductoOrden de venta_Producto]
GO
ALTER TABLE [dbo].[ProductoPedido de Producto]  WITH CHECK ADD  CONSTRAINT [FK_ProductoPedido de Producto_Pedido de Producto] FOREIGN KEY([PedidoDeProductoID])
REFERENCES [dbo].[PedidoDeProducto] ([PedidoDeProductoID])
GO
ALTER TABLE [dbo].[ProductoPedido de Producto] CHECK CONSTRAINT [FK_ProductoPedido de Producto_Pedido de Producto]
GO
ALTER TABLE [dbo].[ProductoPedido de Producto]  WITH CHECK ADD  CONSTRAINT [FK_ProductoPedido de Producto_Producto] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Producto] ([ProductoID])
GO
ALTER TABLE [dbo].[ProductoPedido de Producto] CHECK CONSTRAINT [FK_ProductoPedido de Producto_Producto]
GO
ALTER TABLE [dbo].[Reporte de Ingreso Producto]  WITH CHECK ADD  CONSTRAINT [FK_Reporte de Ingreso Producto_Producto] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Producto] ([ProductoID])
GO
ALTER TABLE [dbo].[Reporte de Ingreso Producto] CHECK CONSTRAINT [FK_Reporte de Ingreso Producto_Producto]
GO
ALTER TABLE [dbo].[Reporte de Ingreso Producto]  WITH CHECK ADD  CONSTRAINT [FK_Reporte de Ingreso Producto_Reporte de Ingreso ] FOREIGN KEY([ReporteDeIngresoID])
REFERENCES [dbo].[ReporteDeIngreso] ([ReporteDeIngresoID])
GO
ALTER TABLE [dbo].[Reporte de Ingreso Producto] CHECK CONSTRAINT [FK_Reporte de Ingreso Producto_Reporte de Ingreso ]
GO
ALTER TABLE [dbo].[ReporteDeIngreso]  WITH CHECK ADD  CONSTRAINT [FK_ReporteDeIngreso_JefeDeAlmacen] FOREIGN KEY([JefeDeAlmacenID])
REFERENCES [dbo].[JefeDeAlmacen] ([JefeDeAlmacenID])
GO
ALTER TABLE [dbo].[ReporteDeIngreso] CHECK CONSTRAINT [FK_ReporteDeIngreso_JefeDeAlmacen]
GO
ALTER TABLE [dbo].[ReporteDeSalida]  WITH CHECK ADD  CONSTRAINT [FK_ReporteDeSalida_JefeDeAlmacen] FOREIGN KEY([JefeDeAlmacenID])
REFERENCES [dbo].[JefeDeAlmacen] ([JefeDeAlmacenID])
GO
ALTER TABLE [dbo].[ReporteDeSalida] CHECK CONSTRAINT [FK_ReporteDeSalida_JefeDeAlmacen]
GO
ALTER TABLE [dbo].[ReporteDeSalida]  WITH CHECK ADD  CONSTRAINT [FK_ReporteDeSalida_PedidoDeProducto] FOREIGN KEY([PedidoDeProductoID])
REFERENCES [dbo].[PedidoDeProducto] ([PedidoDeProductoID])
GO
ALTER TABLE [dbo].[ReporteDeSalida] CHECK CONSTRAINT [FK_ReporteDeSalida_PedidoDeProducto]
GO
/****** Object:  StoredProcedure [dbo].[spDeshabilitaCliente]    Script Date: 22/11/2023 12:43:03 ******/
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
/****** Object:  StoredProcedure [dbo].[spDeshabilitaGerente]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeshabilitaGerente]
    @GerenteID INT
AS
BEGIN
    UPDATE Gerente
    SET Estgerente = 0
    WHERE GerenteID = @GerenteID
END
GO
/****** Object:  StoredProcedure [dbo].[spDeshabilitaJefeDeAlmacen]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeshabilitaJefeDeAlmacen]
    @JefeDeAlmacenID INT
AS
BEGIN
    UPDATE JefeDeAlmacen
    SET Est_jefeproduc = 0
    WHERE JefeDeAlmacenID = @JefeDeAlmacenID
END
GO
/****** Object:  StoredProcedure [dbo].[spDeshabilitaOrdenDeVenta]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeshabilitaOrdenDeVenta]
    @OrdenDeVentaID INT
AS
BEGIN
    DELETE FROM OrdenDeVenta
    WHERE OrdenDeVentaID = @OrdenDeVentaID
END
GO
/****** Object:  StoredProcedure [dbo].[spDeshabilitaPedidoDeProducto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeshabilitaPedidoDeProducto]
    @PedidoDeProductoID INT
AS
BEGIN
    DELETE FROM PedidoDeProducto
    WHERE PedidoDeProductoID = @PedidoDeProductoID
END
GO
/****** Object:  StoredProcedure [dbo].[spDeshabilitaProducto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeshabilitaProducto]
    @ProductoID INT
AS
BEGIN
    UPDATE Producto
    SET Estproducto = 0
    WHERE ProductoID = @ProductoID
END
GO
/****** Object:  StoredProcedure [dbo].[spDeshabilitaTecnico]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeshabilitaTecnico]
    @TecnicoID int
AS
BEGIN
    UPDATE Tecnico
    SET Estado_tecnico = 0
    WHERE TecnicoID = @TecnicoID;
END
GO
/****** Object:  StoredProcedure [dbo].[spEditaCliente]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaCliente]
(@idCliente int,
@razonSocial varchar(50),
@Numero int,
@fecRegCliente date,
@estCliente bit
)
as
begin
update Cliente set
razonSocial = @razonSocial,
Numero = @Numero,
fecRegCliente = @fecRegCliente,
estCliente = @estCliente
where idCliente = @idCliente
end
GO
/****** Object:  StoredProcedure [dbo].[spEditaDiagnostico]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEditaDiagnostico]
(
  @DiagnosticoID int,
  @Desc_diagnostico varchar(50),
  @Fecha_diagnostico datetime,
  @ClienteID int,
  @TecnicoID int
)
AS
BEGIN
  UPDATE Diagnostico
  SET Desc_diagnostico = @Desc_diagnostico,
      Fecha_diagnostico = @Fecha_diagnostico,
      ClienteID = @ClienteID,
      TecnicoID = @TecnicoID
  WHERE DiagnosticoID = @DiagnosticoID
END
GO
/****** Object:  StoredProcedure [dbo].[spEditaGerente]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaGerente]
    @GerenteID INT,
    @Estgerente BIT,
    @Fechareg_gerente DATETIME,
    @Nombre_gerente VARCHAR(50),
    @Telefono_gerente VARCHAR(50)
AS
BEGIN
    UPDATE Gerente
    SET Estgerente = @Estgerente,
        Fechareg_gerente = @Fechareg_gerente,
        Nombre_gerente = @Nombre_gerente,
        Telefono_gerente = @Telefono_gerente
    WHERE GerenteID = @GerenteID
END
GO
/****** Object:  StoredProcedure [dbo].[spEditaJefeDeAlmacen]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaJefeDeAlmacen]
    @JefeDeAlmacenID INT,
    @Est_jefeproduc BIT,
    @Fechareg_jefeproduc DATETIME,
    @Nombre_jefeproduc VARCHAR(50),
    @Telefono_jefeproduc VARCHAR(50)
AS
BEGIN
    UPDATE JefeDeAlmacen
    SET Est_jefeproduc = @Est_jefeproduc,
        Fechareg_jefeproduc = @Fechareg_jefeproduc,
        Nombre_jefeproduc = @Nombre_jefeproduc,
        Telefono_jefeproduc = @Telefono_jefeproduc
    WHERE JefeDeAlmacenID = @JefeDeAlmacenID
END
GO
/****** Object:  StoredProcedure [dbo].[spEditaOrdenDeVenta]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaOrdenDeVenta]
    @OrdenDeVentaID INT,
    @Cantidad_product INT,
    @ClienteID INT,
    @TecnicoID INT,
    @VendedorID INT
AS
BEGIN
    UPDATE OrdenDeVenta
    SET Cantidad_product = @Cantidad_product,
        ClienteID = @ClienteID,
        TecnicoID = @TecnicoID,
        VendedorID = @VendedorID
    WHERE OrdenDeVentaID = @OrdenDeVentaID
END
GO
/****** Object:  StoredProcedure [dbo].[spEditaPedidoDeProducto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaPedidoDeProducto]
    @PedidoDeProductoID INT,
    @Descripción VARCHAR(50),
    @Fecha_pedidoproducto DATETIME,
    @GerenteID INT
AS
BEGIN
    UPDATE PedidoDeProducto
    SET Descripción = @Descripción,
        Fecha_pedidoproducto = @Fecha_pedidoproducto,
        GerenteID = @GerenteID
    WHERE PedidoDeProductoID = @PedidoDeProductoID
END
GO
/****** Object:  StoredProcedure [dbo].[spEditaProducto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaProducto]
    @ProductoID INT,
    @Estproducto BIT,
    @Fecha_registro DATETIME,
    @Nombre VARCHAR(50),
    @Precio MONEY,
    @Stock INT,
    @Tipo VARCHAR(50)
AS
BEGIN
    UPDATE Producto
    SET Estproducto = @Estproducto,
        Fecha_registro = @Fecha_registro,
        Nombre = @Nombre,
        Precio = @Precio,
        Stock = @Stock,
        Tipo = @Tipo
    WHERE ProductoID = @ProductoID
END
GO
/****** Object:  StoredProcedure [dbo].[spEditaTecnico]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaTecnico]
    @TecnicoID int,
    @Nombre_tecnico varchar(50),
    @Fecha_regis_tecnico datetime,
    @Estado_tecnico bit
AS
BEGIN
    UPDATE Tecnico
    SET Nombre_tecnico = @Nombre_tecnico,
        Fecha_regis_tecnico = @Fecha_regis_tecnico,
        Estado_tecnico = @Estado_tecnico
    WHERE TecnicoID = @TecnicoID;
END
GO
/****** Object:  StoredProcedure [dbo].[spEliminaDiagnostico]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminaDiagnostico]
(
  @DiagnosticoID int
)
AS
BEGIN
  DELETE FROM Diagnostico
  WHERE DiagnosticoID = @DiagnosticoID
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertaCliente]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertaCliente]
(
  @razonSocial varchar(50),
  @Numero int,
  @fecRegCliente date,
  @estCliente bit
)
AS
BEGIN
  INSERT INTO Cliente (razonSocial, Numero, fecRegCliente, estCliente)
  VALUES (@razonSocial, @Numero, @fecRegCliente, @estCliente)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertaDiagnostico]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertaDiagnostico]
(
  @Desc_diagnostico varchar(50),
  @Fecha_diagnostico datetime,
  @ClienteID int,
  @TecnicoID int
)
AS
BEGIN
  INSERT INTO Diagnostico (Desc_diagnostico, Fecha_diagnostico, ClienteID, TecnicoID)
  VALUES (@Desc_diagnostico, @Fecha_diagnostico, @ClienteID, @TecnicoID)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertaGerente]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertaGerente]
    @Estgerente BIT,
    @Fechareg_gerente DATETIME,
    @Nombre_gerente VARCHAR(50),
    @Telefono_gerente VARCHAR(50)
AS
BEGIN
    INSERT INTO Gerente (Estgerente, Fechareg_gerente, Nombre_gerente, Telefono_gerente)
    VALUES (@Estgerente, @Fechareg_gerente, @Nombre_gerente, @Telefono_gerente)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertaJefeDeAlmacen]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertaJefeDeAlmacen]
    @Est_jefeproduc BIT,
    @Fechareg_jefeproduc DATETIME,
    @Nombre_jefeproduc VARCHAR(50),
    @Telefono_jefeproduc VARCHAR(50)
AS
BEGIN
    INSERT INTO JefeDeAlmacen (Est_jefeproduc, Fechareg_jefeproduc, Nombre_jefeproduc, Telefono_jefeproduc)
    VALUES (@Est_jefeproduc, @Fechareg_jefeproduc, @Nombre_jefeproduc, @Telefono_jefeproduc)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertaOrdenDeVenta]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertaOrdenDeVenta]
    @Cantidad_product INT,
    @ClienteID INT,
    @TecnicoID INT,
    @VendedorID INT
AS
BEGIN
    INSERT INTO OrdenDeVenta (Cantidad_product, ClienteID, TecnicoID, VendedorID)
    VALUES (@Cantidad_product, @ClienteID, @TecnicoID, @VendedorID)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertaPedidoDeProducto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertaPedidoDeProducto]
    @Descripción VARCHAR(50),
    @Fecha_pedidoproducto DATETIME,
    @GerenteID INT
AS
BEGIN
    INSERT INTO PedidoDeProducto (Descripción, Fecha_pedidoproducto, GerenteID)
    VALUES (@Descripción, @Fecha_pedidoproducto, @GerenteID)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertaProducto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertaProducto]
    @Estproducto BIT,
    @Fecha_registro DATETIME,
    @Nombre VARCHAR(50),
    @Precio MONEY,
    @Stock INT,
    @Tipo VARCHAR(50)
AS
BEGIN
    INSERT INTO Producto (Estproducto, Fecha_registro, Nombre, Precio, Stock, Tipo)
    VALUES (@Estproducto, @Fecha_registro, @Nombre, @Precio, @Stock, @Tipo)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertaTecnico]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertaTecnico]
    @Nombre_tecnico varchar(50),
    @Fecha_regis_tecnico datetime,
    @Estado_tecnico bit
AS
BEGIN
    INSERT INTO Tecnico (Nombre_tecnico, Fecha_regis_tecnico, Estado_tecnico)
    VALUES (@Nombre_tecnico, @Fecha_regis_tecnico, @Estado_tecnico);
END
GO
/****** Object:  StoredProcedure [dbo].[spListaCliente]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaCliente]
AS
SELECT idCliente, razonSocial, Numero, fecRegCliente, estCliente
from Cliente
where estCliente='1'
GO
/****** Object:  StoredProcedure [dbo].[spListaDiagnostico]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spListaDiagnostico]
AS
BEGIN
  SELECT Desc_diagnostico, Fecha_diagnostico, DiagnosticoID, ClienteID, TecnicoID
  FROM Diagnostico
END
GO
/****** Object:  StoredProcedure [dbo].[spListaGerente]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaGerente]
AS
BEGIN
    SELECT GerenteID, Estgerente, Fechareg_gerente, Nombre_gerente, Telefono_gerente
    FROM Gerente
END
GO
/****** Object:  StoredProcedure [dbo].[spListaJefeDeAlmacen]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaJefeDeAlmacen]
AS
BEGIN
    SELECT JefeDeAlmacenID, Est_jefeproduc, Fechareg_jefeproduc, Nombre_jefeproduc, Telefono_jefeproduc
    FROM JefeDeAlmacen
END
GO
/****** Object:  StoredProcedure [dbo].[spListaOrdenDeVenta]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaOrdenDeVenta]
AS
BEGIN
    SELECT OrdenDeVentaID, Cantidad_product, ClienteID, TecnicoID, VendedorID
    FROM OrdenDeVenta
END
GO
/****** Object:  StoredProcedure [dbo].[spListaPedidoDeProducto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaPedidoDeProducto]
AS
BEGIN
    SELECT PedidoDeProductoID, Descripción, Fecha_pedidoproducto, GerenteID
    FROM PedidoDeProducto
END
GO
/****** Object:  StoredProcedure [dbo].[spListaProducto]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaProducto]
AS
BEGIN
    SELECT ProductoID, Estproducto, Fecha_registro, Nombre, Precio, Stock, Tipo
    FROM Producto
END
GO
/****** Object:  StoredProcedure [dbo].[spListaTecnico]    Script Date: 22/11/2023 12:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaTecnico]
AS
BEGIN
    SELECT TecnicoID, Nombre_tecnico, Fecha_regis_tecnico, Estado_tecnico
    FROM Tecnico
    WHERE Estado_tecnico = 1;
END
GO
USE [master]
GO
ALTER DATABASE [MOANSO 6041] SET  READ_WRITE 
GO
