<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="Pagos.aspx.cs" Inherits="MG.Formularios.Articulos.Pagos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form runat="server">
        <div class="jumbotron">
            <div class="col-md-8" style="border-right:1px solid lightgrey;">
				<div>

					<h3>Compra</h3>
					Cantidad: <input type="text" value="1"/> Unidad
				</div>
				<br>
				<div>
					<p>
						USUARIO: <input type="text" value="UserName"/>
					</p>
				</div>
				<br>
				<div>
					<a class="btn btn-success">Aceptar</a>
					<a class="btn btn-danger" href="Articulo.aspx">Cancelar</a>
				</div>
			</div>
			<div class="col-md-4" >
				<div class="thumbnail">
					<img src="/Imagenes/Provisorias/moto2.jpg" alt="" class="img-responsive"/>
				</div>
			</div>
		</div>
        </div>
    </form>
</asp:Content>
