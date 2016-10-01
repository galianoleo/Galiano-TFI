<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestParcial.aspx.cs" Inherits="MG.Formularios.TestParcial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
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
            <div class="col-md-1"></div>
            <div class="col-md-10"></div>
            <div class="col-md-1"></div>
        </div>
        <div class="container">
            <div class=" row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="exampleInputEmail1" id="lblMail" runat="server">Email address</label>
                        <input type="email" class="form-control" id="txtmail" placeholder="Email" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input id="passw" type="password" class="form-control" placeholder="Password" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">File input</label>
                        <input type="file" id="exampleInputFile" runat="server" />
                        <p class="help-block">Example block-level help text here.</p>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input id="chk" type="checkbox" runat="server" />
                            Check me out
                        </label>
                    </div>
                    <button id="btn" type="submit" class="btn btn-default" runat="server" onserverclick="btn_Click">Submit</button>
                </div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <div class="form-inline">
                        <div class="form-group">
                            <label for="exampleInputName2">Name</label>
                            <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail2">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
                        </div>
                        <button type="submit" class="btn btn-default">Send invitation</button>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <div class="container">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="form-inline">
                    <div class="form-group">
                        <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
                        <div class="input-group">
                            <div class="input-group-addon">$</div>
                            <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
                            <div class="input-group-addon">.00</div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Transfer cash</button>
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="container">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">
                                    Remember me
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Sign in</button>
                        </div>
                        <textarea class="form-control" rows="3" placeholder="es un text area"></textarea>
                    </div>
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="container">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="" runat="server">
                        Option one is this and that&mdash;be sure to include why it's great
 
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="" runat="server" />
                        Option two is disabled
 
                    </label>
                </div>

                <div class="radio">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked runat="server">
                        Option one is this and that&mdash;be sure to include why it's great
 
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2" runat="server">
                        Option two can be something else and selecting it will deselect option one
 
                    </label>
                </div>
                <div class="radio ">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" runat="server">
                        Option three is disabled
 
                    </label>
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="container">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <select class="form-control" id="sel" runat="server">
                </select>
                <select multiple class="form-control" id="selmulti" runat="server">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
            <div class="col-md-1"></div>
        </div>
    </form>
</body>
</html>
