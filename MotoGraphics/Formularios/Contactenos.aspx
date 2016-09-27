<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="MG.Formularios.Contactenos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    <div class="well well-sm">
        <form class="form-horizontal" id="Contactenos" runat="server">
            <fieldset>
                <legend class="text-center header">Contactenos</legend>
                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" class="form-control"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido" class="form-control"></asp:TextBox>


                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">
                        <asp:TextBox ID="txtMail" runat="server" placeholder="E-mail" class="form-control"></asp:TextBox>


                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">
                        <asp:TextBox ID="txtTelefono" runat="server" placeholder="Telefono" class="form-control"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">
                        <asp:TextBox ID="txtMensaje" runat="server" placeholder="Mensaje" class="form-control" Rows="7" TextMode="MultiLine"></asp:TextBox>


                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-12 text-center">
                        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" class="btn btn-primary btn-lg" />

                    </div>
                </div>
            </fieldset>
        </form>
    </div>

</asp:Content>
