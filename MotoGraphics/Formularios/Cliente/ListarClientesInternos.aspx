<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListarClientesInternos.aspx.cs" Inherits="MG.Formularios.Cliente.ListarClientesInternos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <div class="jumbotron">
        <form id="listarClientesInternos" runat="server">
            <asp:GridView ID="gvSeleccionarClientesInternos" runat="server" CssClass="table visible-lg table-responsive"
                AutoGenerateColumns="false" DataKeyNames="IdUsuario"
                OnPageIndexChanged="gvSeleccionarClientesInternos_PageIndexChanged"
                OnRowCancelingEdit="gvSeleccionarClientesInternos_RowCancelingEdit"
                OnRowEditing="gvSeleccionarClientesInternos_RowEditing"
                OnRowDeleting="gvSeleccionarClientesInternos_RowDeleting"
                OnRowUpdating="gvSeleccionarClientesInternos_RowUpdating" >
                <Columns>
                    <asp:CommandField ShowEditButton="true" />
                    <asp:CommandField ShowDeleteButton="true" />
                    <asp:TemplateField  HeaderText="DNI">
                        <ItemTemplate>
                            <asp:Label ID="lbl_DNI" runat="server" Text='<%#Eval("DNI") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_DNI" runat="server" Text='<%#Eval("DNI") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Nombre" runat="server" Text='<%#Eval("Nombre") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Nombre" runat="server" Text='<%#Eval("Nombre") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Apellido" runat="server" Text='<%#Eval("Apellido") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Apellido" runat="server" Text='<%#Eval("Apellido") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IdUsuario" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lbl_IdUsuario" runat="server" Text='<%#Eval("Usuario.IdUsuario") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Usuario">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Usuario" runat="server" Text='<%#Eval("usuario.Nombre") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Usuario" runat="server" Text='<%#Eval("Usuario.Nombre") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contrasena">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Contrasena" runat="server" Text='<%#Eval("Usuario.Contrasena") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Contrasena" runat="server" Text='<%#Eval("Usuario.Contrasena") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:TemplateField HeaderText="IdPerfil" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lbl_IdPerfil" runat="server" Text='<%#Eval("Empresa.Perfiles(0).IdPerfil") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pefil">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Pefil" runat="server" Text='<%#Eval("Empresa.Perfiles(0).Nombre") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Pefil" runat="server" Text='<%#Eval("Empresa.Perfiles(0).Nombre") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>--%>
                   <asp:TemplateField HeaderText="Categoria">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlPerfiles" runat="server">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblPerfiles" runat="server" Text='<%# Eval("Empresa.Perfiles(0).Nombre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>
        </form>
    </div>
</asp:Content>
