USE [TEST_TFI]
GO
-----------------------------------------------------------
CREATE procedure [dbo].[IniciarSesion]
@Usuario nvarchar(50),
@Pass nvarchar(50)
as
select 
	
	u.Nombre
from  
	Usuario u
where
 u.Contrasena=@Pass
 and u.Nombre=@Usuario
GO
-----------------------------------------------------------
Create Procedure [dbo].[Seleccionar_Usuarios_ID]
@Id int
as
select * from Usuario
where IdUsuario = @Id
GO
-----------------------------------------------------------
Create Procedure [dbo].[Seleccionar_Usuarios]
as
select * from Usuario
GO
-----------------------------------------------------------
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
-----------------------------------------------------------
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
-----------------------------------------------------------
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
-----------------------------------------------------------
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
-----------------------------------------------------------
Create Procedure [dbo].[Insertar_Articulo]
@Descripcion varchar(50),
@Importe decimal(18,2),
@IdCategoria int,
@IdEmpresa int
as
Insert into Articulos
values (@Descripcion, @Importe, @IdEmpresa, @IdCategoria, null)
GO
-----------------------------------------------------------
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
-----------------------------------------------------------
Create Procedure [dbo].[Eliminar_Articulo]
@IdArticulo int
as
update Articulos
set Baja=GETDATE()
where IdArticulo=@IdArticulo
GO
-----------------------------------------------------------
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
-----------------------------------------------------------