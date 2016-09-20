<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="SaleccionarArticulos.aspx.cs" Inherits="MG.Formularios.Articulos.SaleccionarArticulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <div class="jumbotron">
        <form id="SeleccionarArticulos" runat="server">
            <asp:GridView ID="gvSeleccionarArticulos" runat="server" CssClass="table visible-lg table-striped"
                AutoGenerateColumns="false" DataKeyNames="IdArticulo"
                OnPageIndexChanging="gvSeleccionarArticulos_PageIndexChanging"
                OnRowCancelingEdit="gvSeleccionarArticulos_RowCancelingEdit"
                OnRowEditing="gvSeleccionarArticulos_RowEditing"
                OnRowDeleting="gvSeleccionarArticulos_RowDeleting"
                OnRowUpdating="gvSeleccionarArticulos_RowUpdating">
                <Columns>
                    <asp:CommandField ShowEditButton="true" />
                    <asp:CommandField ShowDeleteButton="true" />
                    <%--<asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                    <asp:BoundField DataField="Importe" HeaderText="Importe" />
                    <asp:BoundField DataField="Categoria.Descripcion" HeaderText="Categoria" />
                    <asp:BoundField DataField="IdArticulo" HeaderText="IdArticulo" Visible="false"/>--%>
                    <asp:TemplateField HeaderText="Descripcion">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Descripcion" runat="server" Text='<%#Eval("Descripcion") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Descripcion" runat="server" Text='<%#Eval("Descripcion") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Importe">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Importe" runat="server" Text='<%#Eval("Importe") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Importe" runat="server" Text='<%#Eval("Importe") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Categoria">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlCategoriaArticulo" runat="server">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Categoria.Descripcion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Codigo">
                        <ItemTemplate>
                            <asp:Label ID="lbl_IdArticulo" runat="server" Text='<%#Eval("IdArticulo") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </form>
    </div>

</asp:Content>
