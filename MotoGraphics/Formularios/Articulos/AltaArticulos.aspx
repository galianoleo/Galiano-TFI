<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="AltaArticulos.aspx.cs" Inherits="MG.Formularios.Articulos.AltaArticulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    <div class="jumbotron">
        <form id="AltaArticulo" runat="server">
            <div class="col-md-12">
                <div class="col-md-3">
                    <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategoriaArticulo" runat="server"></asp:DropDownList>
                </div>
            </div>
            <div class=" col-md-3">
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
            </div>
        </form>
    </div>
</asp:Content>
