<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="MG.Formularios.Reportes.Reportes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="Reportes" runat="server">
        <div class="jumbotron">
            <div class="row form-group">
                <label>Periodo Desde: </label>
                <input id="fDesde" class="datepicker" runat="server" />
                <label>Periodo Hasta: </label>
                <input id="fHasta" class="datepicker" runat="server" />

                <label>Reporte: </label>
                <select id="sReporte" class="form-control" runat="server">
                    <option>Reporte 1</option>
                    <option>Reporte 2</option>
                    <option>Reporte 3</option>
                    <option>Reporte 4</option>
                </select>

            </div>
            <div class="row form-group">
                <button id="btnAceptar" class="btn-default" runat="server">Aceptar</button>
            </div>
            <div class="row form-group">

            </div>
        </div>
    </form>
</asp:Content>
