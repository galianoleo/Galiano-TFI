<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="HistorialComprasCliente.aspx.cs" Inherits="MG.Formularios.Cliente.HistorialComprasCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
        <form id="HistorialCliente" runat="server">
        <div class="jumbotron">
            <div class="row">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td>Historial </td>
                            <td>Descripcion</td>
                            <td>Cantidad</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Descripcion 1</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Descripcion 2</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Descripcion 3</td>
                            <td>3</td>
                        </tr>
                    </tbody>
                </table>

            </div>
            <div class="row">
                <button id="btnAceptar" runat="server" class="btn-default">Aceptar</button>
            </div>
        </div>
    </form>
</asp:Content>
