<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistrarClienteInterno.aspx.cs" Inherits="MG.Formularios.Cliente.RegistrarClienteInterno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="RegistrarCliente" runat="server" class="register">
        <div class="form-horizontal" runat="server">
            <div class="row">
                <fieldset>
                    <legend>
                        <asp:Label ID="lblRegistroDeUsuarios" runat="server" Text="Nuevo Usuario" CssClass="h3"></asp:Label>
                    </legend>

                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="InputName">DNI</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtDNI" runat="server" CssClass="form-control" Width="220px" Height="20px"></asp:TextBox>
                                <%--<input type="email" class="form-control" id="name" name="InputEmail" placeholder="Enter Email">--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputName">Nombre</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" Width="220px" Height="20px"></asp:TextBox>
                                <%--<input type="email" class="form-control" id="name" name="InputEmail" placeholder="Enter Email">--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputEmail">Apellido</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" Width="220px" Height="20px"> </asp:TextBox>
                                <%--<input type="email" class="form-control" id="InputEmailFirst" name="InputEmail" placeholder="Enter Email">--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputEmail">Email</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" Width="220px" Height="20px"></asp:TextBox>
                                <%--<input type="email" class="form-control" id="InputEmailSecond" name="InputEmail" placeholder="Confirm Email">--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputMessage">Permisos</label>
                            <div class="input-group">
                                <asp:DropDownList ID="ddlPermisos" CssClass="btn btn-default dropdown-toggle" runat="server"></asp:DropDownList>
                                <%--<textarea name="InputMessage" id="InputMessage" class="form-control" rows="5"></textarea>--%>
                            </div>
                        </div>
                        <asp:Button ID="btnAceptar" Text="Guardar" runat="server" CssClass="btn btn-info pull-right" OnClick="btnAceptar_Click" />
                        <%--<input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right">--%>
                    </div>

                </fieldset>
            </div>
        </div>
    </form>
</asp:Content>
