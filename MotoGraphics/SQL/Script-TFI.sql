USE [test_tfi]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos](
	[IDPermisos] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Permisos] PRIMARY KEY CLUSTERED 
(
	[IDPermisos] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[IDPerfil] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[IDPerfil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Perfiles] ON
INSERT [dbo].[Perfiles] ([IDPerfil], [Nombre], [Baja]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[Perfiles] ([IDPerfil], [Nombre], [Baja]) VALUES (2, N'supervisor', NULL)
INSERT [dbo].[Perfiles] ([IDPerfil], [Nombre], [Baja]) VALUES (3, N'Cliente', NULL)
SET IDENTITY_INSERT [dbo].[Perfiles] OFF
/****** Object:  Table [dbo].[Etiquetas]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etiquetas](
	[IDEtiqueta] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Etiquetas] PRIMARY KEY CLUSTERED 
(
	[IDEtiqueta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[IDEmpresa] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Empresas] PRIMARY KEY CLUSTERED 
(
	[IDEmpresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Baja]) VALUES (1, N'MotoGraphics', NULL)
/****** Object:  Table [dbo].[Empresa]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[IdEmpresa] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Empresa] ([IdEmpresa], [Nombre], [Baja]) VALUES (1, N'MotoGraphics', NULL)
/****** Object:  Table [dbo].[Impuestos]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Impuestos](
	[IdImpuesto] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Valor] [decimal](18, 0) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Impuestos] PRIMARY KEY CLUSTERED 
(
	[IdImpuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Idiomas]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idiomas](
	[IDIdioma] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Idiomas] PRIMARY KEY CLUSTERED 
(
	[IDIdioma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formularios](
	[IDFormulario] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Formularios] PRIMARY KEY CLUSTERED 
(
	[IDFormulario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormaDePago]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormaDePago](
	[IdFormaDePago] [int] NOT NULL,
	[Descripcion] [nchar](10) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_FormaDePago] PRIMARY KEY CLUSTERED 
(
	[IdFormaDePago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[Baja] [datetime] NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([IdUsuario], [Contrasena], [Baja], [Nombre]) VALUES (1, N'lgaliano', NULL, N'lgaliano@mg.com')
INSERT [dbo].[Usuario] ([IdUsuario], [Contrasena], [Baja], [Nombre]) VALUES (2, N'rantunes', NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [Contrasena], [Baja], [Nombre]) VALUES (14, N'123456', NULL, N'jpascual@mg.com')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Table [dbo].[TiposDocumentos]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDocumentos](
	[IdTipoDocumento] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_TiposDocumentos] PRIMARY KEY CLUSTERED 
(
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TiposDocumentos] ([IdTipoDocumento], [Descripcion], [Baja]) VALUES (1, N'DNI', NULL)
/****** Object:  Table [dbo].[TipoDeDireccion]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDeDireccion](
	[IdTipoDeDireccion] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_TipoDeDireccion] PRIMARY KEY CLUSTERED 
(
	[IdTipoDeDireccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDeComprobante]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDeComprobante](
	[IdTipoComprobante] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_TipoDeComprobante] PRIMARY KEY CLUSTERED 
(
	[IdTipoComprobante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON
INSERT [dbo].[Pais] ([IdPais], [Descripcion], [Baja]) VALUES (1, N'Argentina', NULL)
INSERT [dbo].[Pais] ([IdPais], [Descripcion], [Baja]) VALUES (2, N'Brasil', NULL)
INSERT [dbo].[Pais] ([IdPais], [Descripcion], [Baja]) VALUES (3, N'Chile', NULL)
INSERT [dbo].[Pais] ([IdPais], [Descripcion], [Baja]) VALUES (4, N'Paraguay', NULL)
INSERT [dbo].[Pais] ([IdPais], [Descripcion], [Baja]) VALUES (5, N'Uruguay', NULL)
INSERT [dbo].[Pais] ([IdPais], [Descripcion], [Baja]) VALUES (6, N'Bolivia', NULL)
INSERT [dbo].[Pais] ([IdPais], [Descripcion], [Baja]) VALUES (7, N'EEUU', NULL)
SET IDENTITY_INSERT [dbo].[Pais] OFF
/****** Object:  Table [dbo].[Provincia]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provincia](
	[IdProvincia] [int] NOT NULL,
	[IdPais] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Provincia_1] PRIMARY KEY CLUSTERED 
(
	[IdProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PermisosPorPerfil]    Script Date: 10/13/2016 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisosPorPerfil](
	[IdPermiso] [int] NOT NULL,
	[IDPerfil] [int] NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_PermisosPorPerfil] PRIMARY KEY CLUSTERED 
(
	[IdPermiso] ASC,
	[IDPerfil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Seleccionar_Perfiles]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Seleccionar_Perfiles]
as
select 
	idperfil, 
	nombre 
from 
	perfiles
where
	baja is null
GO
/****** Object:  StoredProcedure [dbo].[Seleccionar_Paises]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Seleccionar_Paises]
as
select 
	IdPais,
	Descripcion
from 
	Pais
Where
	Baja is null
GO
/****** Object:  StoredProcedure [dbo].[Seleccionar_Usuarios_ID]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Seleccionar_Usuarios_ID]
@Id int
as
select * from Usuario
where IdUsuario = @Id
GO
/****** Object:  StoredProcedure [dbo].[Seleccionar_Usuarios]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Seleccionar_Usuarios]
as
select * from Usuario
GO
/****** Object:  Table [dbo].[UsuariosEmpresas]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosEmpresas](
	[IDUsuario] [int] NOT NULL,
	[IDEmpresa] [int] NOT NULL,
	[IDPerfil] [int] NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_UsuariosEmpresas] PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC,
	[IDEmpresa] ASC,
	[IDPerfil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UsuariosEmpresas] ([IDUsuario], [IDEmpresa], [IDPerfil], [Baja]) VALUES (1, 1, 1, NULL)
INSERT [dbo].[UsuariosEmpresas] ([IDUsuario], [IDEmpresa], [IDPerfil], [Baja]) VALUES (14, 1, 3, NULL)
/****** Object:  StoredProcedure [dbo].[Validar_Existencia_Mail]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Validar_Existencia_Mail]
@mail nvarchar(100)
as
select
	Nombre
from Usuario
where
	Nombre = @mail
	and baja is null
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Documento] [int] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[RazonSocial] [varchar](50) NULL,
	[IdUsuario] [int] NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Cliente_1] PRIMARY KEY CLUSTERED 
(
	[Documento] ASC,
	[IdEmpresa] ASC,
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cliente] ([Documento], [IdEmpresa], [Nombre], [Apellido], [IdTipoDocumento], [RazonSocial], [IdUsuario], [Baja]) VALUES (1, 1, N'jose', N'pascual', 1, N'una razon social', 14, NULL)
INSERT [dbo].[Cliente] ([Documento], [IdEmpresa], [Nombre], [Apellido], [IdTipoDocumento], [RazonSocial], [IdUsuario], [Baja]) VALUES (32673439, 1, N'Leonardo', N'Galiano', 1, N'MotoGraphisc', 1, NULL)
/****** Object:  Table [dbo].[Bitacora]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[IDFila] [int] NOT NULL,
	[Cadena] [nvarchar](50) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IDUsuario] [int] NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[IDFila] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriasArticulos]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriasArticulos](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEmpresa] [int] NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_CategoriasArticulos] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CategoriasArticulos] ON
INSERT [dbo].[CategoriasArticulos] ([IdCategoria], [Descripcion], [IdEmpresa], [Baja]) VALUES (1, N'Importado', 1, NULL)
INSERT [dbo].[CategoriasArticulos] ([IdCategoria], [Descripcion], [IdEmpresa], [Baja]) VALUES (2, N'Nacional', 1, NULL)
SET IDENTITY_INSERT [dbo].[CategoriasArticulos] OFF
/****** Object:  Table [dbo].[EtiquetasPorForm]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EtiquetasPorForm](
	[IDEtiqueta] [int] NOT NULL,
	[IDFormulario] [int] NOT NULL,
	[IDIdioma] [int] NOT NULL,
	[IDTraduccion] [int] NOT NULL,
	[Traduccion] [nvarchar](50) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_EtiquetasPorForm] PRIMARY KEY CLUSTERED 
(
	[IDEtiqueta] ASC,
	[IDFormulario] ASC,
	[IDIdioma] ASC,
	[IDTraduccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[DNI] [int] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC,
	[IdEmpresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Empleado] ([DNI], [IdEmpresa], [Nombre], [Apellido], [IdUsuario], [Baja]) VALUES (123456, 1, N'joseca', N'pascual', 14, NULL)
/****** Object:  Table [dbo].[EmpresaPerfiles]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaPerfiles](
	[IDEmpresa] [int] NOT NULL,
	[IDPerfil] [int] NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_EmpresaPerfiles] PRIMARY KEY CLUSTERED 
(
	[IDEmpresa] ASC,
	[IDPerfil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Insertar_Usuario]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Insertar_Usuario]
@Contrasena varchar(50),
@Nombre varchar(100)
as
insert into Usuario
values(@Contrasena, null, @Nombre)

select @@IDENTITY as IdUsuario
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Partido](
	[IdPartido] [int] NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Partido] PRIMARY KEY CLUSTERED 
(
	[IdPartido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[IniciarSesion]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[IniciarSesion]  
@Usuario nvarchar(50),  
@Pass nvarchar(50)  
as  
select   
   
 u.Nombre,
 p.Nombre 'Perfil'  
from Usuario u
	inner join UsuariosEmpresas ue
		on u.IdUsuario = ue.IDUsuario
	inner join Perfiles p
		on p.IDPerfil=ue.IDPerfil  
where  
 u.Contrasena=@Pass  
 and u.Nombre=@Usuario
GO
/****** Object:  StoredProcedure [dbo].[Insertar_Empleado]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Insertar_Empleado]  
@DNI int,  
@IdEmpresa int,  
@Nombre nvarchar(50),  
@Apellido nvarchar(50),  
@IdUsuario int  
as  
insert into Empleado  
values(@DNI, 1, @Nombre, @Apellido, @IdUsuario, null)  
  
SELECT DNI from Empleado where DNI =@DNI
GO
/****** Object:  StoredProcedure [dbo].[Eliminar_Empleado]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Eliminar_Empleado]
@IdUsuario int,
@DNI int,
@IdEmpresa int
as
update Usuario
set Baja = GETDATE()
where IdUsuario = @IdUsuario

update Empleado
set Baja = GETDATE()
where DNI = @DNI

update UsuariosEmpresas
set Baja = GETDATE()
where IDEmpresa = @IdEmpresa
	and IDUsuario = @IdUsuario
GO
/****** Object:  Table [dbo].[CuentaCorriente]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuentaCorriente](
	[IdTransaccion] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
	[Importe] [nvarchar](50) NULL,
	[Saldo] [decimal](18, 0) NULL,
	[Documento] [int] NULL,
	[IdEmpresa] [int] NULL,
	[idTipoDocumento] [int] NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_CuentaCorriente] PRIMARY KEY CLUSTERED 
(
	[IdTransaccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Editar_Empleado]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Editar_Empleado]
@dni int,
@idusuario int,
@idempresa int,
@nombre varchar(50),
@apellido varchar(50),
@usuario nvarchar(100),
@contrasena nvarchar(50),
@idperfil int
as
update Empleado
set Nombre=@nombre, Apellido = @apellido
where DNI = @dni

update Usuario
set Nombre = @usuario, Contrasena = @contrasena
where IdUsuario=@idusuario

update UsuariosEmpresas
set IDPerfil=@idperfil
where IDUsuario = @idusuario and IDEmpresa = @idempresa
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articulos](
	[IdArticulo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Importe] [decimal](18, 2) NULL,
	[IdEmpresa] [int] NULL,
	[IdCategoria] [int] NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[IdArticulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Articulos] ON
INSERT [dbo].[Articulos] ([IdArticulo], [Descripcion], [Importe], [IdEmpresa], [IdCategoria], [Baja]) VALUES (1, N'3M', CAST(123.01 AS Decimal(18, 2)), 1, 1, NULL)
INSERT [dbo].[Articulos] ([IdArticulo], [Descripcion], [Importe], [IdEmpresa], [IdCategoria], [Baja]) VALUES (2, N'vinilo', CAST(123.00 AS Decimal(18, 2)), 1, 2, NULL)
INSERT [dbo].[Articulos] ([IdArticulo], [Descripcion], [Importe], [IdEmpresa], [IdCategoria], [Baja]) VALUES (3, N'modificado', CAST(123.00 AS Decimal(18, 2)), 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Articulos] OFF
/****** Object:  StoredProcedure [dbo].[Insertar_Usuarios_Empresas_Perfiles]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Insertar_Usuarios_Empresas_Perfiles]
@IdUsuario int,
@IdEmpresa int,
@IdPerfil int
as
insert into UsuariosEmpresas
values(@IdUsuario, @IdEmpresa, @IdPerfil, null)
GO
/****** Object:  StoredProcedure [dbo].[Validar_Existencia_DNI]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Validar_Existencia_DNI]
@dni int
as
select
	Documento
from Cliente
where
	Documento = @dni
	and baja is null
GO
/****** Object:  StoredProcedure [dbo].[Seleccionar_Usuario_Por_Cliente]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Seleccionar_Usuario_Por_Cliente]
@Documento int
as
select 
	u.IdUsuario,
	u.Nombre 
from Usuario u
	inner join Cliente c
		on c.IdUsuario = u.IdUsuario
where c.Documento = @Documento
GO
/****** Object:  StoredProcedure [dbo].[Seleccionar_Empresa_Por_Usuario]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Seleccionar_Empresa_Por_Usuario]
@Documento int
as
select 
	e.IdEmpresa,
	e.Nombre
from Empresa e
	inner join UsuariosEmpresas ue
		on ue.IDEmpresa = e.IdEmpresa
	inner join Usuario u
		on ue.IDUsuario = u.IdUsuario
	inner join Cliente c
		on c.IdUsuario = u.IdUsuario
where c.Documento = @Documento
GO
/****** Object:  StoredProcedure [dbo].[Seleccionar_Empleados]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Seleccionar_Empleados]
as
select
	e.DNI,
	e.Nombre,
	e.Apellido,
	e.IdUsuario,
	u.Nombre Usuario,
	u.Contrasena,
	p.IDPerfil,
	p.Nombre Perfil
from 
	Empleado e
		inner join Usuario u
			on e.IdUsuario = u.IdUsuario
		inner join UsuariosEmpresas ue
			on ue.IDUsuario = u.IdUsuario
		inner join Perfiles p
			on ue.IDPerfil = p.IDPerfil
where
	 e.Baja is null
	 and u.Baja is null
	 and ue.Baja is null
	 and p.Baja is null
GO
/****** Object:  StoredProcedure [dbo].[Seleccionar_Cliente_DNI]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Seleccionar_Cliente_DNI]  
@Documento int  
as  
Select   
 td.Descripcion,  
 c.Documento,  
 c.Nombre,  
 c.Apellido,  
 u.Nombre 'NombreUsuario',  
 e.Nombre 'NombreEmpresa'   
from Cliente c  
 inner join Usuario u  
  on c.IdUsuario = u.IdUsuario  
 inner join TiposDocumentos td  
  on c.IdTipoDocumento = td.IdTipoDocumento  
 inner join Empresa e  
  on c.IdEmpresa = e.IdEmpresa  
where c.Documento=@Documento
GO
/****** Object:  StoredProcedure [dbo].[Seleccionar_Categoria_Articulo]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Seleccionar_Categoria_Articulo]
@IdEmpresa int
as
select
	IdCategoria,
	Descripcion
from CategoriasArticulos
where
	IdEmpresa = @IdEmpresa
	and Baja is null
GO
/****** Object:  StoredProcedure [dbo].[Seleccionar_Articulos]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Seleccionar_Articulos]
as
select
	IdArticulo,
	Descripcion,
	Importe,
	IdCategoria
from Articulos
where Baja is null
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[IdPago] [int] NOT NULL,
	[Fecha] [timestamp] NULL,
	[Importe] [decimal](18, 0) NULL,
	[IdFormaPago] [int] NULL,
	[IdTransaccion] [int] NULL,
	[Documento] [int] NULL,
	[IdEmpresa] [int] NULL,
	[IdTipoDocumento] [int] NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaDePrecios]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaDePrecios](
	[IDListaDePrecio] [int] NOT NULL,
	[IDArticulo] [int] NOT NULL,
	[Precio] [float] NOT NULL,
	[VigenciaDesde] [datetime] NOT NULL,
	[VigenciaHasta] [datetime] NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_ListaDePrecios] PRIMARY KEY CLUSTERED 
(
	[IDListaDePrecio] ASC,
	[IDArticulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudad](
	[IdCiudad] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdPartido] [int] NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Ciudad_1] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComprobanteCabecera]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComprobanteCabecera](
	[IdTipoDeComprobante] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[IdNumeroComprobante] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[DireccionDeEnvio] [int] NOT NULL,
	[DireccionDeFacturacion] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdFormaDePago] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[Subtotal] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL,
	[IdTransaccion] [int] NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_ComprobanteCabecera_1] PRIMARY KEY CLUSTERED 
(
	[IdTipoDeComprobante] ASC,
	[IdSucursal] ASC,
	[IdEmpresa] ASC,
	[IdNumeroComprobante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrito]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrito](
	[IdArticulo] [int] NOT NULL,
	[Documento] [int] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Carrito] PRIMARY KEY CLUSTERED 
(
	[IdArticulo] ASC,
	[Documento] ASC,
	[IdEmpresa] ASC,
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Editar_Articulo]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Editar_Articulo]
@IdArticulo int,
@Descripcion varchar(50),
@Importe decimal(18,2),
@IdCategoria int
as
update Articulos
set Descripcion = @Descripcion, Importe = @Importe, IdCategoria = @IdCategoria
where IdArticulo = @IdArticulo
GO
/****** Object:  StoredProcedure [dbo].[Eliminar_Articulo]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Eliminar_Articulo]
@IdArticulo int
as
update Articulos
set Baja=GETDATE()
where IdArticulo=@IdArticulo
GO
/****** Object:  StoredProcedure [dbo].[Insertar_Articulo]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Insertar_Articulo]
@Descripcion varchar(50),
@Importe decimal(18,2),
@IdCategoria int,
@IdEmpresa int
as
Insert into Articulos
values (@Descripcion, @Importe, @IdEmpresa, @IdCategoria, null)
GO
/****** Object:  Table [dbo].[ImpuestosDeComprobante]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpuestosDeComprobante](
	[IdImpuesto] [int] NOT NULL,
	[IdTipoDeComprobante] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[IdNumeroComprobante] [int] NOT NULL,
	[Importe] [decimal](18, 0) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_ImpuestosDeComprobante] PRIMARY KEY CLUSTERED 
(
	[IdImpuesto] ASC,
	[IdTipoDeComprobante] ASC,
	[IdSucursal] ASC,
	[IdEmpresa] ASC,
	[IdNumeroComprobante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComprobanteDetalle]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComprobanteDetalle](
	[IdEmpresa] [int] NOT NULL,
	[IdTipoComprobante] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[IdNumeroComprobante] [int] NOT NULL,
	[IdArticulo] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](18, 2) NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_ComprobanteDetalle] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdTipoComprobante] ASC,
	[IdSucursal] ASC,
	[IdNumeroComprobante] ASC,
	[IdArticulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direccion](
	[IdDireccionCliente] [int] NOT NULL,
	[Calle] [varchar](50) NOT NULL,
	[Numero] [int] NOT NULL,
	[Piso] [int] NOT NULL,
	[Departamento] [varchar](3) NOT NULL,
	[IdCiudad] [int] NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[IdDireccionCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Remitos]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remitos](
	[IdRemito] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[IdNumeroComprobante] [int] NULL,
	[IdSucursal] [int] NULL,
	[IdTipoDeComprobante] [int] NULL,
	[IdEmpresa] [int] NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_Remitos] PRIMARY KEY CLUSTERED 
(
	[IdRemito] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemitosDetalles]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemitosDetalles](
	[IdRemito] [int] NOT NULL,
	[IdArticulo] [int] NOT NULL,
	[Cantidad] [decimal](18, 0) NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_RemitosDetalles] PRIMARY KEY CLUSTERED 
(
	[IdRemito] ASC,
	[IdArticulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DireccionesDeCliente]    Script Date: 10/13/2016 21:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DireccionesDeCliente](
	[Documento] [int] NOT NULL,
	[IdDireccion] [int] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[Baja] [datetime] NULL,
 CONSTRAINT [PK_DireccionesDeCliente_1] PRIMARY KEY CLUSTERED 
(
	[Documento] ASC,
	[IdDireccion] ASC,
	[IdEmpresa] ASC,
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Provincia_Pais]    Script Date: 10/13/2016 21:44:51 ******/
ALTER TABLE [dbo].[Provincia]  WITH CHECK ADD  CONSTRAINT [FK_Provincia_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Provincia] CHECK CONSTRAINT [FK_Provincia_Pais]
GO
/****** Object:  ForeignKey [FK_PermisosPorPerfil_Perfiles]    Script Date: 10/13/2016 21:44:51 ******/
ALTER TABLE [dbo].[PermisosPorPerfil]  WITH CHECK ADD  CONSTRAINT [FK_PermisosPorPerfil_Perfiles] FOREIGN KEY([IDPerfil])
REFERENCES [dbo].[Perfiles] ([IDPerfil])
GO
ALTER TABLE [dbo].[PermisosPorPerfil] CHECK CONSTRAINT [FK_PermisosPorPerfil_Perfiles]
GO
/****** Object:  ForeignKey [FK_PermisosPorPerfil_Permisos]    Script Date: 10/13/2016 21:44:51 ******/
ALTER TABLE [dbo].[PermisosPorPerfil]  WITH CHECK ADD  CONSTRAINT [FK_PermisosPorPerfil_Permisos] FOREIGN KEY([IdPermiso])
REFERENCES [dbo].[Permisos] ([IDPermisos])
GO
ALTER TABLE [dbo].[PermisosPorPerfil] CHECK CONSTRAINT [FK_PermisosPorPerfil_Permisos]
GO
/****** Object:  ForeignKey [FK_UsuariosEmpresas_Empresas]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[UsuariosEmpresas]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosEmpresas_Empresas] FOREIGN KEY([IDEmpresa])
REFERENCES [dbo].[Empresas] ([IDEmpresa])
GO
ALTER TABLE [dbo].[UsuariosEmpresas] CHECK CONSTRAINT [FK_UsuariosEmpresas_Empresas]
GO
/****** Object:  ForeignKey [FK_UsuariosEmpresas_Perfiles]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[UsuariosEmpresas]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosEmpresas_Perfiles] FOREIGN KEY([IDPerfil])
REFERENCES [dbo].[Perfiles] ([IDPerfil])
GO
ALTER TABLE [dbo].[UsuariosEmpresas] CHECK CONSTRAINT [FK_UsuariosEmpresas_Perfiles]
GO
/****** Object:  ForeignKey [FK_UsuariosEmpresas_Usuario]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[UsuariosEmpresas]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosEmpresas_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[UsuariosEmpresas] CHECK CONSTRAINT [FK_UsuariosEmpresas_Usuario]
GO
/****** Object:  ForeignKey [FK_Cliente_Empresa]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Empresa]
GO
/****** Object:  ForeignKey [FK_Cliente_TiposDocumentos]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_TiposDocumentos] FOREIGN KEY([IdTipoDocumento])
REFERENCES [dbo].[TiposDocumentos] ([IdTipoDocumento])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_TiposDocumentos]
GO
/****** Object:  ForeignKey [FK_Cliente_Usuario]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Usuario]
GO
/****** Object:  ForeignKey [FK_Bitacora_Usuario]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Usuario]
GO
/****** Object:  ForeignKey [FK_CategoriasArticulos_Empresa]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[CategoriasArticulos]  WITH CHECK ADD  CONSTRAINT [FK_CategoriasArticulos_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[CategoriasArticulos] CHECK CONSTRAINT [FK_CategoriasArticulos_Empresa]
GO
/****** Object:  ForeignKey [FK_EtiquetasPorForm_Etiquetas]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[EtiquetasPorForm]  WITH CHECK ADD  CONSTRAINT [FK_EtiquetasPorForm_Etiquetas] FOREIGN KEY([IDEtiqueta])
REFERENCES [dbo].[Etiquetas] ([IDEtiqueta])
GO
ALTER TABLE [dbo].[EtiquetasPorForm] CHECK CONSTRAINT [FK_EtiquetasPorForm_Etiquetas]
GO
/****** Object:  ForeignKey [FK_EtiquetasPorForm_Formularios]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[EtiquetasPorForm]  WITH CHECK ADD  CONSTRAINT [FK_EtiquetasPorForm_Formularios] FOREIGN KEY([IDFormulario])
REFERENCES [dbo].[Formularios] ([IDFormulario])
GO
ALTER TABLE [dbo].[EtiquetasPorForm] CHECK CONSTRAINT [FK_EtiquetasPorForm_Formularios]
GO
/****** Object:  ForeignKey [FK_EtiquetasPorForm_Idiomas]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[EtiquetasPorForm]  WITH CHECK ADD  CONSTRAINT [FK_EtiquetasPorForm_Idiomas] FOREIGN KEY([IDIdioma])
REFERENCES [dbo].[Idiomas] ([IDIdioma])
GO
ALTER TABLE [dbo].[EtiquetasPorForm] CHECK CONSTRAINT [FK_EtiquetasPorForm_Idiomas]
GO
/****** Object:  ForeignKey [FK_Empleado_Usuario]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Usuario]
GO
/****** Object:  ForeignKey [FK_EmpresaPerfiles_Empresas]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[EmpresaPerfiles]  WITH CHECK ADD  CONSTRAINT [FK_EmpresaPerfiles_Empresas] FOREIGN KEY([IDEmpresa])
REFERENCES [dbo].[Empresas] ([IDEmpresa])
GO
ALTER TABLE [dbo].[EmpresaPerfiles] CHECK CONSTRAINT [FK_EmpresaPerfiles_Empresas]
GO
/****** Object:  ForeignKey [FK_EmpresaPerfiles_Perfiles]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[EmpresaPerfiles]  WITH CHECK ADD  CONSTRAINT [FK_EmpresaPerfiles_Perfiles] FOREIGN KEY([IDPerfil])
REFERENCES [dbo].[Perfiles] ([IDPerfil])
GO
ALTER TABLE [dbo].[EmpresaPerfiles] CHECK CONSTRAINT [FK_EmpresaPerfiles_Perfiles]
GO
/****** Object:  ForeignKey [FK_Partido_Provincia]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Partido]  WITH CHECK ADD  CONSTRAINT [FK_Partido_Provincia] FOREIGN KEY([IdProvincia])
REFERENCES [dbo].[Provincia] ([IdProvincia])
GO
ALTER TABLE [dbo].[Partido] CHECK CONSTRAINT [FK_Partido_Provincia]
GO
/****** Object:  ForeignKey [FK_CuentaCorriente_Cliente]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[CuentaCorriente]  WITH CHECK ADD  CONSTRAINT [FK_CuentaCorriente_Cliente] FOREIGN KEY([Documento], [IdEmpresa], [idTipoDocumento])
REFERENCES [dbo].[Cliente] ([Documento], [IdEmpresa], [IdTipoDocumento])
GO
ALTER TABLE [dbo].[CuentaCorriente] CHECK CONSTRAINT [FK_CuentaCorriente_Cliente]
GO
/****** Object:  ForeignKey [FK_Articulos_CategoriasArticulos]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_CategoriasArticulos] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriasArticulos] ([IdCategoria])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_CategoriasArticulos]
GO
/****** Object:  ForeignKey [FK_Articulos_Empresa]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Empresa]
GO
/****** Object:  ForeignKey [FK_Pagos_Cliente]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Cliente] FOREIGN KEY([Documento], [IdEmpresa], [IdTipoDocumento])
REFERENCES [dbo].[Cliente] ([Documento], [IdEmpresa], [IdTipoDocumento])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Cliente]
GO
/****** Object:  ForeignKey [FK_Pagos_CuentaCorriente]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_CuentaCorriente] FOREIGN KEY([IdTransaccion])
REFERENCES [dbo].[CuentaCorriente] ([IdTransaccion])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_CuentaCorriente]
GO
/****** Object:  ForeignKey [FK_Pagos_FormaDePago]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_FormaDePago] FOREIGN KEY([IdFormaPago])
REFERENCES [dbo].[FormaDePago] ([IdFormaDePago])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_FormaDePago]
GO
/****** Object:  ForeignKey [FK_ListaDePrecios_Articulos]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[ListaDePrecios]  WITH CHECK ADD  CONSTRAINT [FK_ListaDePrecios_Articulos] FOREIGN KEY([IDArticulo])
REFERENCES [dbo].[Articulos] ([IdArticulo])
GO
ALTER TABLE [dbo].[ListaDePrecios] CHECK CONSTRAINT [FK_ListaDePrecios_Articulos]
GO
/****** Object:  ForeignKey [FK_Ciudad_Partido]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Partido] FOREIGN KEY([IdPartido])
REFERENCES [dbo].[Partido] ([IdPartido])
GO
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Partido]
GO
/****** Object:  ForeignKey [FK_ComprobanteCabecera_CuentaCorriente]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[ComprobanteCabecera]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteCabecera_CuentaCorriente] FOREIGN KEY([IdTransaccion])
REFERENCES [dbo].[CuentaCorriente] ([IdTransaccion])
GO
ALTER TABLE [dbo].[ComprobanteCabecera] CHECK CONSTRAINT [FK_ComprobanteCabecera_CuentaCorriente]
GO
/****** Object:  ForeignKey [FK_ComprobanteCabecera_Empleado]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[ComprobanteCabecera]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteCabecera_Empleado] FOREIGN KEY([IdEmpleado], [IdEmpresa])
REFERENCES [dbo].[Empleado] ([DNI], [IdEmpresa])
GO
ALTER TABLE [dbo].[ComprobanteCabecera] CHECK CONSTRAINT [FK_ComprobanteCabecera_Empleado]
GO
/****** Object:  ForeignKey [FK_ComprobanteCabecera_FormaDePago]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[ComprobanteCabecera]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteCabecera_FormaDePago] FOREIGN KEY([IdFormaDePago])
REFERENCES [dbo].[FormaDePago] ([IdFormaDePago])
GO
ALTER TABLE [dbo].[ComprobanteCabecera] CHECK CONSTRAINT [FK_ComprobanteCabecera_FormaDePago]
GO
/****** Object:  ForeignKey [FK_ComprobanteCabecera_TipoDeComprobante]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[ComprobanteCabecera]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteCabecera_TipoDeComprobante] FOREIGN KEY([IdTipoDeComprobante])
REFERENCES [dbo].[TipoDeComprobante] ([IdTipoComprobante])
GO
ALTER TABLE [dbo].[ComprobanteCabecera] CHECK CONSTRAINT [FK_ComprobanteCabecera_TipoDeComprobante]
GO
/****** Object:  ForeignKey [FK_Carrito_Articulos]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Carrito]  WITH CHECK ADD  CONSTRAINT [FK_Carrito_Articulos] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[Articulos] ([IdArticulo])
GO
ALTER TABLE [dbo].[Carrito] CHECK CONSTRAINT [FK_Carrito_Articulos]
GO
/****** Object:  ForeignKey [FK_Carrito_Cliente]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Carrito]  WITH CHECK ADD  CONSTRAINT [FK_Carrito_Cliente] FOREIGN KEY([Documento], [IdEmpresa], [IdTipoDocumento])
REFERENCES [dbo].[Cliente] ([Documento], [IdEmpresa], [IdTipoDocumento])
GO
ALTER TABLE [dbo].[Carrito] CHECK CONSTRAINT [FK_Carrito_Cliente]
GO
/****** Object:  ForeignKey [FK_ImpuestosDeComprobante_ComprobanteCabecera]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[ImpuestosDeComprobante]  WITH CHECK ADD  CONSTRAINT [FK_ImpuestosDeComprobante_ComprobanteCabecera] FOREIGN KEY([IdTipoDeComprobante], [IdSucursal], [IdEmpresa], [IdNumeroComprobante])
REFERENCES [dbo].[ComprobanteCabecera] ([IdTipoDeComprobante], [IdSucursal], [IdEmpresa], [IdNumeroComprobante])
GO
ALTER TABLE [dbo].[ImpuestosDeComprobante] CHECK CONSTRAINT [FK_ImpuestosDeComprobante_ComprobanteCabecera]
GO
/****** Object:  ForeignKey [FK_ImpuestosDeComprobante_Impuestos]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[ImpuestosDeComprobante]  WITH CHECK ADD  CONSTRAINT [FK_ImpuestosDeComprobante_Impuestos] FOREIGN KEY([IdImpuesto])
REFERENCES [dbo].[Impuestos] ([IdImpuesto])
GO
ALTER TABLE [dbo].[ImpuestosDeComprobante] CHECK CONSTRAINT [FK_ImpuestosDeComprobante_Impuestos]
GO
/****** Object:  ForeignKey [FK_ComprobanteDetalle_Articulos]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[ComprobanteDetalle]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteDetalle_Articulos] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[Articulos] ([IdArticulo])
GO
ALTER TABLE [dbo].[ComprobanteDetalle] CHECK CONSTRAINT [FK_ComprobanteDetalle_Articulos]
GO
/****** Object:  ForeignKey [FK_ComprobanteDetalle_ComprobanteCabecera]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[ComprobanteDetalle]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteDetalle_ComprobanteCabecera] FOREIGN KEY([IdTipoComprobante], [IdSucursal], [IdEmpresa], [IdNumeroComprobante])
REFERENCES [dbo].[ComprobanteCabecera] ([IdTipoDeComprobante], [IdSucursal], [IdEmpresa], [IdNumeroComprobante])
GO
ALTER TABLE [dbo].[ComprobanteDetalle] CHECK CONSTRAINT [FK_ComprobanteDetalle_ComprobanteCabecera]
GO
/****** Object:  ForeignKey [FK_Direccion_Ciudad1]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Ciudad1] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Ciudad1]
GO
/****** Object:  ForeignKey [FK_Remitos_ComprobanteCabecera]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[Remitos]  WITH CHECK ADD  CONSTRAINT [FK_Remitos_ComprobanteCabecera] FOREIGN KEY([IdNumeroComprobante], [IdSucursal], [IdEmpresa], [IdRemito])
REFERENCES [dbo].[ComprobanteCabecera] ([IdTipoDeComprobante], [IdSucursal], [IdEmpresa], [IdNumeroComprobante])
GO
ALTER TABLE [dbo].[Remitos] CHECK CONSTRAINT [FK_Remitos_ComprobanteCabecera]
GO
/****** Object:  ForeignKey [FK_RemitosDetalles_Articulos]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[RemitosDetalles]  WITH CHECK ADD  CONSTRAINT [FK_RemitosDetalles_Articulos] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[Articulos] ([IdArticulo])
GO
ALTER TABLE [dbo].[RemitosDetalles] CHECK CONSTRAINT [FK_RemitosDetalles_Articulos]
GO
/****** Object:  ForeignKey [FK_RemitosDetalles_Remitos]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[RemitosDetalles]  WITH CHECK ADD  CONSTRAINT [FK_RemitosDetalles_Remitos] FOREIGN KEY([IdRemito])
REFERENCES [dbo].[Remitos] ([IdRemito])
GO
ALTER TABLE [dbo].[RemitosDetalles] CHECK CONSTRAINT [FK_RemitosDetalles_Remitos]
GO
/****** Object:  ForeignKey [FK_DireccionesDeCliente_Cliente]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[DireccionesDeCliente]  WITH CHECK ADD  CONSTRAINT [FK_DireccionesDeCliente_Cliente] FOREIGN KEY([Documento], [IdEmpresa], [IdTipoDocumento])
REFERENCES [dbo].[Cliente] ([Documento], [IdEmpresa], [IdTipoDocumento])
GO
ALTER TABLE [dbo].[DireccionesDeCliente] CHECK CONSTRAINT [FK_DireccionesDeCliente_Cliente]
GO
/****** Object:  ForeignKey [FK_DireccionesDeCliente_Direccion]    Script Date: 10/13/2016 21:45:02 ******/
ALTER TABLE [dbo].[DireccionesDeCliente]  WITH CHECK ADD  CONSTRAINT [FK_DireccionesDeCliente_Direccion] FOREIGN KEY([IdDireccion])
REFERENCES [dbo].[Direccion] ([IdDireccionCliente])
GO
ALTER TABLE [dbo].[DireccionesDeCliente] CHECK CONSTRAINT [FK_DireccionesDeCliente_Direccion]
GO
