using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;
using System.Data;

namespace MG.Formularios.Articulos
{
    public partial class SaleccionarArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvbind();
            }
        }

        protected void gvbind()
        {
            Articulo_BE articuloBE = new Articulo_BE();
            gvSeleccionarArticulos.DataSource = articuloBE.SeleccionarArticulos();
            gvSeleccionarArticulos.DataBind();
        }

        protected void gvSeleccionarArticulos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
        }

        protected void gvSeleccionarArticulos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvSeleccionarArticulos.EditIndex = -1;
            gvbind();
        }

        protected void gvSeleccionarArticulos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label txtIdArticulo = gvSeleccionarArticulos.Rows[e.RowIndex].FindControl("lbl_IdArticulo") as Label;
            Articulo_BE articuloBE = new Articulo_BE();
            articuloBE.EliminarArticulo(int.Parse(txtIdArticulo.Text));
            gvSeleccionarArticulos.EditIndex = -1;
            gvbind();
        }

        protected void gvSeleccionarArticulos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvSeleccionarArticulos.EditIndex = e.NewEditIndex;

            int id = Convert.ToInt32(gvSeleccionarArticulos.DataKeys[e.NewEditIndex].Value);
            //Articulo_BE articuloBE = new Articulo_BE();
            
 
            
            gvSeleccionarArticulos.EditIndex = e.NewEditIndex;
            
            gvbind();
            DropDownList combo = gvSeleccionarArticulos.Rows[e.NewEditIndex].FindControl("ddlCategoriaArticulo") as DropDownList;
            CategoriaArticulo_BE categoria = new CategoriaArticulo_BE();
            List<CategoriaArticulo_EN> lcategoria = new List<CategoriaArticulo_EN>();
            lcategoria = categoria.SeleccionarCategoriaArticulo();
            if (combo != null)
            {
                combo.DataValueField = "IdCategoria";
                combo.DataTextField = "Descripcion";
                combo.DataSource = lcategoria;
                combo.DataBind();
            }
            
            //ver como seleccionar el que estaba!!
            //int id = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value);
            //combo.SelectedValue = Convert.ToString(articuloBE.Seleccionar);



        }

        protected void gvSeleccionarArticulos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int IdArticulo = int.Parse(gvSeleccionarArticulos.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)gvSeleccionarArticulos.Rows[e.RowIndex];
            //Label lblId = (Label)row.FindControl("lblIdArticulo");
            Label txtIdArticulo = gvSeleccionarArticulos.Rows[e.RowIndex].FindControl("lbl_IdArticulo") as Label;
            TextBox txtDescripcion = gvSeleccionarArticulos.Rows[e.RowIndex].FindControl("txt_Descripcion") as TextBox;
            TextBox txtImporte = gvSeleccionarArticulos.Rows[e.RowIndex].FindControl("txt_Importe") as TextBox;
            DropDownList combo = gvSeleccionarArticulos.Rows[e.RowIndex].FindControl("ddlCategoriaArticulo") as DropDownList;
            Articulo_EN oArticulo = new Articulo_EN();
            oArticulo.IdArticulo = int.Parse(txtIdArticulo.Text);
            oArticulo.Descripcion = txtDescripcion.Text;
            oArticulo.Importe = decimal.Parse(txtImporte.Text);
            oArticulo.IdCategoria = int.Parse(combo.SelectedValue);
            Articulo_BE articuloBE = new Articulo_BE();
            articuloBE.EditarArticulo(oArticulo);
            gvSeleccionarArticulos.EditIndex = -1;
            gvbind();
            


        }
       
    }
}