<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="Articulo.aspx.cs" Inherits="MG.Formularios.Articulos.Articulo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form class="form-group"  runat="server">
        <div class="row jumbotron">
            <div class="product">
			<div>
				<div class="col-md-8" style="border-right: 1px lightgray solid; ">
					<p>
						<h2>Producto</h2>
					</p>
					<br>
					<p style="text-align:center;">
						<img src="/Imagenes/Provisorias/moto2.jpg" style="width:450px">
					</p>
				</div>
				<div class="col-md-4 form-group">
					<br/>
					<div class="form-inline">
						<p>
							<select class="form-control" title="MONEDA">
								<option>ARS</option>
								<option>USD</option>
								</select>
							<label style="font-size:18px;">$ 200.00</label>
						</p>
					</div>
					<br>
					<p>
						<label>Cantidad</label>
						<select class="form-control" title="Cantidad">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</p>

					<p style="text-align:right;">
						<a href="Pagos.aspx" class="btn btn-success"><strong>COMPRAR</strong></a>
					</p>
					<br>
					<div class="bg-info img-rounded" style="padding:10px;">
						<p>
							<label>Medios de Pago</label>
							<i class="glyphicon glyphicon-credit-card"></i>
							<br>
							<span> 
								<img src="/Imagenes/visa_xs.png" alt="" style="width:40px; ">
							</span>
							<span> 
								<img src="/Imagenes/master.png" alt="" style=" width:40px; ">
							</span>
							<span> 
								<img src="/Imagenes/paypal.png" alt="" style=" width:70px; ">
							</span>
						</p>
					</div>
					<br>
					<p>
						<a href="#" class=" btn btn-primary glyphicon glyphicon-heart"></a>
					</p>
					<br>

					<p class="calificacion">
						<p class="pull-right">15 reviews</p>
						<p>
							<span class="glyphicon glyphicon-star"></span>
							<span class="glyphicon glyphicon-star"></span>
							<span class="glyphicon glyphicon-star"></span>
							<span class="glyphicon glyphicon-star"></span>
							<span class="glyphicon glyphicon-star"></span>
						</p>

					</p>
					<br>
					<p style="text-align:center;">Codigo: 231321 | Unidades: 5</p>
				</div>
			</div>
			<div class="col-md-12" style="border-top:1px solid  lightgrey; margin-top: 25px ">
				<h2>Descripcion</h2>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
					natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque
					eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
					arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer
					tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor
					eu, consequat vitae, eleifend ac, enim.</p>
			</div>
			
		</div>
        </div>
    </form>
</asp:Content>
