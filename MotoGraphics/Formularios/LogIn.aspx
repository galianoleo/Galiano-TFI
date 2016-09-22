<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="MG.Formilarios.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    <div class="jumbotron">

        <form id="FormLogIn"  runat="server" class="form-signin">
            <h2 class="form-signin-heading">Please sign in</h2>
            <label for="inputEmail" class="sr-only">Email address</label>
            <asp:TextBox ID="inputEmail" TextMode="Email" runat="server" class="form-control" placeholder="Email address" required autofocus></asp:TextBox>
            
            <label for="inputPassword" class="sr-only">Password</label>
            <asp:TextBox ID="inputPassword" TextMode="Password" runat="server" class="form-control" placeholder="Password" required></asp:TextBox>
           
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label>
            </div>
            <asp:Button ID="btnIniciar" runat="server" Text="Iniciar" class="btn btn-lg btn-primary btn-block" OnClick="btnIniciar_Click" />
            <%--<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>--%>
        </form>


    </div>


</asp:Content>
