<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="MG.Formularios.Facturas.Factura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
    <title>MotoGrafics</title>
    <%-- <meta name="generator" content="Bootply" />--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="/Content/Style.css" rel="stylesheet" />
    <link href="/Content/signin.css" rel="stylesheet" />
    <link href="/Content/DatePicker.css" rel="stylesheet" />
    <link href="/Content/Justified-nav.css" rel="stylesheet" />
    <!-- script references -->
    <link rel="icon" href="/Imagenes/favicon.ico" />
    <script src="/Scripts/jquery-3.1.0.min.js"></script>
    <script src="/Scripts/bootstrap.min.js"></script>
    <script src="/Scripts/Scripts.js"></script>
    <script src="/Scripts/Bootstrap-datepicker.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="row pad-top-botm ">
                <div class="col-lg-6 col-md-6 col-sm-6 ">
                    <img src="/Imagenes/logoMX.jpg" style="padding-bottom: 20px;" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">

                    <strong>OxyRed  Technologies  LLC.</strong>
                    <br />
                    <i>Address :</i> 245/908 , New York Lane,
              <br />
                    Forth Street , Deumark,
              <br />
                    United States.
              
                </div>
            </div>
            <div class="row text-center contact-info">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <hr />
                    <span>
                        <strong>Email : </strong>info@mg.com 
                    </span>
                    <span>
                        <strong>Call : </strong>+95 - 890- 789- 9087 
                    </span>
                    <span>
                        <strong>Fax : </strong>+012340-908- 890 
                    </span>
                    <hr />
                </div>
            </div>
            <div class="row pad-top-botm client-info">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <h4><strong>Client Information</strong></h4>
                    <asp:Label ID="lblCliente" runat="server" Text="Label"><strong>  Jhon Deo Chuixae</strong></asp:Label>

                    <br />
                    <b>Address :</b>
                    <asp:Label ID="lblDireccion" runat="server" Text="Label">145/908 , New York Lane,</asp:Label>
                    <br />
                    <b>Call :</b><asp:Label ID="lblTelefono" runat="server" Text="Label"> +90-908-567-0987</asp:Label>
                    <br />
                    <b>E-mail :</b><asp:Label ID="lblMail" runat="server" Text="Label">info@clientdomain.com</asp:Label>
                    <br />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">

                    <h4>
                        <asp:Label ID="lblDetalle" runat="server" Text="Label"><strong>Detalles de Pago </strong></asp:Label></h4>
                    <b>Total facturado:   </b>
                    <asp:Label ID="lblTotal" runat="server" Text="Label">990 USD</asp:Label>
                    <br />
                    Fecha Factura:
                    <asp:Label ID="lblFecha" runat="server" Text="Label">01th August 2014</asp:Label>
                    <br />
                    <b>Estado de factura:</b><asp:Label ID="lblEstado" runat="server" Text="Label">Pagado</asp:Label>
                    <%-- <br />
               Delivery Date :  10th August 2014
              <br />
               Purchase Date :  30th July 2014--%>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>S. No.</th>
                                    <th>Perticulars</th>
                                    <th>Quantity.</th>
                                    <th>Unit Price</th>
                                    <th>Sub Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Website Design</td>
                                    <td>1</td>
                                    <td>300 USD</td>
                                    <td>300 USD</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Plugin Dev.</td>
                                    <td>2</td>
                                    <td>200 USD</td>
                                    <td>400 USD</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Hosting Domains</td>
                                    <td>2</td>
                                    <td>100 USD</td>
                                    <td>200 USD</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <hr />
                    <%--<div class="ttl-amts">
                        <h5>Total Amount : 900 USD </h5>
                    </div>
                    <hr />
                    <div class="ttl-amts">
                        <h5>Tax : 90 USD ( by 10 % on bill ) </h5>
                    </div>
                    <hr />
                    <div class="ttl-amts">
                        <h4><strong>Bill Amount : 990 USD</strong> </h4>
                    </div>--%>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <strong>Importante: </strong>
                    <ol>
                        <li>Esta es una factura generada electrónicamente, de manera no requiere ninguna firma.

                        </li>
                        
                    </ol>
                </div>
            </div>
            <div class="row pad-top-botm">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <hr />
                    <asp:Button ID="btnImprimir" CssClass="btn btn-primary btn-lg" runat="server" Text="Imprimir" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDescargar" CssClass="btn btn-success btn-lg" runat="server" Text="Descargar en PDF" />
              
                </div>
            </div>
        </div>
    </form>
</body>
</html>
