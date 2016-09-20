using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;
namespace MG.Formularios.Articulos
{
    public partial class AltaArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoriaArticulo_BE CategoriaBE = new CategoriaArticulo_BE();
            List<CategoriaArticulo_EN> lcategoria = new List<CategoriaArticulo_EN>();
            if (!IsPostBack)
            {
                lcategoria = CategoriaBE.SeleccionarCategoriaArticulo();
                ddlCategoriaArticulo.DataValueField = "IdCategoria";
                ddlCategoriaArticulo.DataTextField = "Descripcion";
                ddlCategoriaArticulo.DataSource = lcategoria;
                ddlCategoriaArticulo.DataBind();

            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Articulo_EN oArticulo = new Articulo_EN();
            CategoriaArticulo_EN oCategoria = new CategoriaArticulo_EN();
            oCategoria.IdCategoria = Int32.Parse(ddlCategoriaArticulo.SelectedValue);
            oArticulo.Descripcion = txtDescripcion.Text;
            oArticulo.Importe = decimal.Parse(txtPrecio.Text);
            oArticulo.Categoria = oCategoria;
            Articulo_BE articuloBE = new Articulo_BE();
            articuloBE.InsertarArticulo(oArticulo);


        }

    }
}