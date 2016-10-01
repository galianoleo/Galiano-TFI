<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="RegistrarCliente.aspx.cs" Inherits="MG.Formularios.Cliente.RegistrarCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Content/RegistrarCliente.css" rel="stylesheet" />
    <script type="text/javascript">
        function DeleteKartItems() {
            $.ajax({
                type: "POST",
                url: 'RegistrarCliente.aspx/test',
                data: "",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    alert("anda");
                },
                error: function (e) {
                    alert("error" + e.toString());
                }
            });
        }
        function AceptarCliente() {
            var mail = $("#contenidoPrincipal_txtEmail").val();
            var dni = $("#contenidoPrincipal_txtDNI1").val();
            $.ajax({
                type: "POST",
                url: 'RegistrarCliente.aspx/btnRegistrarCliente',
                data: "{mail: '" + mail + "', dni: '" + dni + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    alert("anda");
                },
                error: function (e) {
                    alert("error" + e.toString());
                }
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">




    <form id="RegistrarCliente" runat="server" class="register">

        <%-- 
        <fieldset class="row2">
            <legend>Detalles Personales
            </legend>
            <p>
                <label>
                    DNI *
                </label>
                

            </p>
            <p>
                <label>
                    Nombre *
                </label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>

            </p>
            <p>
                <label>
                    Apellido *
                </label>
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>

            </p>
            <p>
                <label>
                    Telefono *
                </label>
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>

            </p>
            <p>
                <label class="optional">
                    Direccion
                </label>
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>

            </p>
            <p>
                <label>
                    Ciudad *
                </label>
                <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>

            </p>
            <p>
                <label>
                    Pais *
                </label>
                <select>
                    <asp:DropDownList ID="ddlPais" runat="server"></asp:DropDownList>

                </select>
            </p>
            <p>
                <label class="optional">
                    Website
                </label>
                <asp:TextBox ID="txtWebSite" CssClass="long" runat="server"></asp:TextBox>


            </p>
        </fieldset>

        <fieldset class="row4">
            <div>
                <asp:Button ID="btnRegistrar" CssClass="buttonLEO" runat="server" Text="Registrar &raquo;" OnClick="btnRegistrar_Click" />
                <asp:Button ID="btnCancelar" CssClass="buttonLEO" runat="server" Text="Cancelar &raquo;" OnClick="btnCancelar_Click" />
            </div>
        </fieldset>--%>

        <div class="row">
            <div class="col-md-12">
                <h3 class="text-center">Registrar Cliente</h3>
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
                    <label>
                        Password *
                    </label>

                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>

                </div>


            </div>
            <div class="form-group col-md-6">
                <div class="form-group">
                    <label>
                        Repetir Email *
                    </label>
                    <asp:TextBox ID="txtRepetirEmail" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>
                        Repetir Password *
                    </label>

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
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
                       <%-- <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>--%>
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

                    <button id="btnCancelar" type="button" class="buttonLEO" runat="server" onserverclick="btnCancelar_ServerClick" >
                        Cancelar &raquo;
                    </button>
                </div>
            </div>
        </fieldset>
        <%--<fieldset class="row2">
            <legend>Detalles de usuario
            </legend>
            <div class="row">
                <div class="col-md-3">
                    <label>
                        Email *
                    </label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>
                        Repetir Email *
                    </label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtRepetirEmail" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <label>
                        Password *
                    </label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>
                        Repetir Password *
                    </label>
                </div>
                <div class="col-md-3">
                    <input id="txtRepetirPassword" runat="server" />
                </div>
            </div>
        </fieldset>
        <fieldset class="row2">
            <legend>Detalles Personales
            </legend>
            <div class="row">
                <div class="col-md-3">
                    <label>
                        DNI *
                    </label>
                </div>
                <div class="col-md-3">
                    <input id="txtDNI1" runat="server" class="form-control" />
                </div>
                <div class="col-md-3">
                    <label>
                        Nombre
                    </label>
                </div>
                <div class="col-md-3">
                    <input id="txtNombre1" runat="server" class="form-control"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <label>
                        Apellido
                    </label>
                </div>
                <div class="col-md-3">
                    <input id="txtApe" runat="server" class="form-control"/>
                </div>
                <div class="col-md-3">
                    <label>
                        Telefono
                    </label>
                </div>
                <div class="col-md-3">
                    <input id="txtTel" runat="server" class="form-control" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <label>Direcccion</label>
                </div>
                <div class="col-md-3">
                    <input id="txtDire" runat="server" />
                </div>
                <div class="col-md-3">
                    <label>
                        Ciudad
                    </label>
                </div>
                <div class="col-md-3">
                    <input id="txtCiuda" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <label>
                        Pais
                    </label>
                </div>
                <div class="col-md-3">
                    <select class="form-control" id="lPais" runat="server">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <label>
                        Web
                    </label>
                </div>
                <div class="col-md-3">
                    <input id="txtWeb" runat="server" />
                </div>
            </div>
        </fieldset>
        <fieldset class="row2">
            <legend></legend>
            <div class="row">
                <div class="col-md-6">

                    <button type="button" class="btn btn-default" onclick="AceptarCliente()">
                        Registrar
                    </button>
                </div>
                <div class="col-md-6">

                    <button type="button" class="btn btn-default" onclick="DeleteKartItems()">
                        Cancelar
                    </button>
                </div>
            </div>
        </fieldset>--%>
    </form>


</asp:Content>
