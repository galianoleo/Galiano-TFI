<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="RegistrarCliente.aspx.cs" Inherits="MG.Formularios.Cliente.RegistrarCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">




    <form id="RegistrarCliente" runat="server" class="register">

        <h1 class="imageRegister">Registrar Cliente</h1>
        <fieldset class="row1">
            <legend>Detalles de la cuenta
            </legend>
            <p>
                <label>
                    Email *
                </label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <%--<input type="text" />--%>
                <label>
                    Repetir email *
                </label>
                <asp:TextBox ID="txtRepetirEmail" runat="server"></asp:TextBox>
                
            </p>
            <p>
                <label>
                    Password*
                </label>
                <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                <%--<input type="text" />--%>
                <label>
                    Repetir Password*
                </label>
                <asp:TextBox ID="txtRepetirPass" runat="server"></asp:TextBox>
                <%--<input type="text" />--%>
                <label class="obinfo">
                    * Campos Obligatorios
                </label>
            </p>
        </fieldset>
        <fieldset class="row2">
            <legend>Detalles Personales
            </legend>
            <p>
                <label>
                    Nombre *
                </label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <%--<input type="text" class="long" />--%>
            </p>
            <p>
                <label>
                    Telefono *
                </label>
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                <%--<input type="text" maxlength="10" />--%>
            </p>
            <p>
                <label class="optional">
                    Direccion
                </label>
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                <%--<input type="text" class="long" />--%>
            </p>
            <p>
                <label>
                    Ciudad *
                </label>
                <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
                <%--<input type="text" class="long" />--%>
            </p>
            <p>
                <label>
                    Pais *
                </label>
                <select>
                    <asp:DropDownList ID="ddlPais" runat="server"></asp:DropDownList>
                    <%--<option></option>
                    <option value="1">Argentina
                    </option>--%>
                </select>
            </p>
            <p>
                <label class="optional">
                    Website
                </label>
                <asp:TextBox ID="txtWebSite" CssClass="long" runat="server"></asp:TextBox>
                <%--<input class="long" type="text" value="http://" />--%>

            </p>
        </fieldset>
     <%--   <fieldset class="row3">
            <legend>Further Information
            </legend>
            <p>
                <label>Gender *</label>
                <input type="radio" value="radio" />
                <label class="gender">Male</label>
                <input type="radio" value="radio" />
                <label class="gender">Female</label>
            </p>
            <p>
                <label>
                    Birthdate *
                </label>
                <select class="date">
                    <option value="1">01
                    </option>
                    <option value="2">02
                    </option>
                    <option value="3">03
                    </option>
                    <option value="4">04
                    </option>
                    <option value="5">05
                    </option>
                    <option value="6">06
                    </option>
                    <option value="7">07
                    </option>
                    <option value="8">08
                    </option>
                    <option value="9">09
                    </option>
                    <option value="10">10
                    </option>
                    <option value="11">11
                    </option>
                    <option value="12">12
                    </option>
                    <option value="13">13
                    </option>
                    <option value="14">14
                    </option>
                    <option value="15">15
                    </option>
                    <option value="16">16
                    </option>
                    <option value="17">17
                    </option>
                    <option value="18">18
                    </option>
                    <option value="19">19
                    </option>
                    <option value="20">20
                    </option>
                    <option value="21">21
                    </option>
                    <option value="22">22
                    </option>
                    <option value="23">23
                    </option>
                    <option value="24">24
                    </option>
                    <option value="25">25
                    </option>
                    <option value="26">26
                    </option>
                    <option value="27">27
                    </option>
                    <option value="28">28
                    </option>
                    <option value="29">29
                    </option>
                    <option value="30">30
                    </option>
                    <option value="31">31
                    </option>
                </select>
                <select>
                    <option value="1">January
                    </option>
                    <option value="2">February
                    </option>
                    <option value="3">March
                    </option>
                    <option value="4">April
                    </option>
                    <option value="5">May
                    </option>
                    <option value="6">June
                    </option>
                    <option value="7">July
                    </option>
                    <option value="8">August
                    </option>
                    <option value="9">September
                    </option>
                    <option value="10">October
                    </option>
                    <option value="11">November
                    </option>
                    <option value="12">December
                    </option>
                </select>
                <input class="year" type="text" size="4" maxlength="4" />e.g 1976
            </p>
            <p>
                <label>
                    Nationality *
                </label>
                <select>
                    <option value="0"></option>
                    <option value="1">United States
                    </option>
                </select>
            </p>
            <p>
                <label>
                    Children *
                </label>
                <input type="checkbox" value="" />
            </p>


        </fieldset>--%>
        <fieldset class="row4">
            <div>
                <asp:Button ID="btnRegistrar" CssClass="buttonLEO" runat="server" Text="Registrar &raquo;" />
                <%--<button class="buttonLEO">Registrar &raquo;</button>--%></div>
        </fieldset>

    </form>


</asp:Content>
