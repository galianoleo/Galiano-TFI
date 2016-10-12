<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="MovimientosCliente.aspx.cs" Inherits="MG.Formularios.Cliente.MovimientosCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="MovimientosCliente" runat="server">
        <div class="jumbotron">
            <div class="row">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td>Movimiento </td>
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
