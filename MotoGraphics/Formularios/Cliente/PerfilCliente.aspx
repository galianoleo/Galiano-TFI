<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="PerfilCliente.aspx.cs" Inherits="MG.Formularios.Cliente.PerfilCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    <form id="PerfilCliente" runat="server" class="register">

        <div class="row">
            <div class="col-md-12">
                <h3 class="text-center">Mi Perfil</h3>
            </div>
        </div>
        <fieldset class="row2">
            <legend>Detalles de usuario
            </legend>
            <div class="form-group col-md-6">
                <div class="form-group">
                    <label>
                        Email *
                    </label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
            </div>
            <div class="form-group col-md-6">
                <div class="form-group">
                    <label>
                        Password *
                    </label>

                    <button class="btn-sm btn-default form-control" runat="server" id="btnCambiarPass">Cambiar Pass</button>

                </div>
            </div>
        </fieldset>
        <fieldset class="row2">
            <legend>Detalles Personales
            </legend>
            <div class="form-group col-md-6">
                <div class="form-group">
                    <label>
                        Nombre
                    </label>
                    <input id="txtNombre1" runat="server" class="form-control" />
                    <label>
                        DNI *
                    </label>
                    <input id="txtDNI" runat="server" class="form-control" />
                    <label>Direcccion</label>

                    <input id="txtDire" runat="server" class="form-control" />
                    <label>
                        Pais
                    </label>

                    <select class="form-control" id="sPais" runat="server">
                    </select>

                </div>
            </div>
            <div class="form-group col-md-6">
                <div class="form-group">
                    <label>
                        Apellido
                    </label>
                    <input id="txtApellido" runat="server" class="form-control" />
                    <label>
                        Telefono
                    </label>

                    <input id="txtTel" runat="server" class="form-control" />
                    <label>
                        Ciudad
                    </label>

                    <input id="txtCiuda" runat="server" class="form-control" />
                    <label>
                        Web
                    </label>

                    <input id="txtWeb" runat="server" class="form-control" />
                </div>
            </div>
        </fieldset>
        <fieldset class="row2">
            <legend></legend>
            <div class="row">
                <div class="col-md-6">

                    <button id="btnAceptar" type="button" class="buttonLEO" runat="server" onserverclick="btnAceptar_ServerClick">
                        Registrar &raquo;
                    </button>
                </div>
                <div class="col-md-6">

                    <button id="btnCancelar" type="button" class="buttonLEO" runat="server" onserverclick="btnCancelar_ServerClick">
                        Cancelar &raquo;
                    </button>
                </div>
            </div>
        </fieldset>

    </form>

</asp:Content>
