<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="AccesoDenegado.aspx.cs" Inherits="MG.Formularios.AccesoDenegado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
   
        <div class="col-md-4 col-sm-4 text-right ">
            <asp:Label
                ID="label3"
                class="h1 control-label"
                runat="server"
                Text="Acceso No Autorizado"></asp:Label>
            <div>
                <asp:Label
                    ID="label1"
                    class="control-label"
                    runat="server"
                    Text="<em>Permisos insuficientes</em>"></asp:Label>
            </div>

            <div id="top-buffer">
                <asp:Label
                    ID="Label2"
                    class="control-label"
                    runat="server"
                    Text="El acceso a la página solicitada ha sido denegada"></asp:Label>

            </div>
            <div id="top-img" class="text-right">
                <img class="img-responsive" src="/Imagenes/AccesoDenegado.jpg" alt="" />

            </div>
        </div>
    
</asp:Content>
