using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;
namespace MG.Formularios.Cliente
{
    public partial class ListarClientesInternos : System.Web.UI.Page
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
            Empleado_BE be = new Empleado_BE();
            gvSeleccionarClientesInternos.DataSource = be.SeleccionarEmpleados();
            gvSeleccionarClientesInternos.DataBind();
        }

        protected void gvSeleccionarClientesInternos_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvSeleccionarClientesInternos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvSeleccionarClientesInternos.EditIndex = -1;
            gvbind();
        }

        protected void gvSeleccionarClientesInternos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvSeleccionarClientesInternos.EditIndex = e.NewEditIndex;
            int idUsuario = Convert.ToInt32(gvSeleccionarClientesInternos.DataKeys[e.NewEditIndex].Value);
            gvSeleccionarClientesInternos.EditIndex = e.NewEditIndex;
            gvbind();
            DropDownList combo = gvSeleccionarClientesInternos.Rows[e.NewEditIndex].FindControl("ddlPerfiles") as DropDownList;
            Perfil_BE be = new Perfil_BE();
            List<Perfil_EN> lPerfiles = new List<Perfil_EN>();
            lPerfiles = be.SeleccionarPerfiles();
            if (combo != null)
            {
                combo.DataValueField = "IdPerfil";
                combo.DataTextField = "Nombre";
                combo.DataSource = lPerfiles;
                combo.DataBind();

            }
        }

        protected void gvSeleccionarClientesInternos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label IdUsuario = gvSeleccionarClientesInternos.Rows[e.RowIndex].FindControl("lbl_IdUsuario") as Label;
            Label dni = gvSeleccionarClientesInternos.Rows[e.RowIndex].FindControl("lbl_DNI") as Label;
            Empleado_BE be = new Empleado_BE();
            Empleado_EN oEmpleado = new Empleado_EN();
            oEmpleado.DNI=Convert.ToInt32(dni.Text ); 
            oEmpleado.Usuario.IdUsuario=Convert.ToInt32(IdUsuario.Text);
            be.ElimiarEmpleado(oEmpleado);
            gvbind();
        }

        protected void gvSeleccionarClientesInternos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox dni = gvSeleccionarClientesInternos.Rows[e.RowIndex].FindControl("txt_DNI") as TextBox;
            Label IdUsuario = gvSeleccionarClientesInternos.Rows[e.RowIndex].FindControl("lbl_IdUsuario") as Label;
            TextBox nombre = gvSeleccionarClientesInternos.Rows[e.RowIndex].FindControl("txt_Nombre") as TextBox;
            TextBox apellido = gvSeleccionarClientesInternos.Rows[e.RowIndex].FindControl("txt_Apellido") as TextBox;
            TextBox usuario = gvSeleccionarClientesInternos.Rows[e.RowIndex].FindControl("txt_Usuario") as TextBox;
            TextBox contrasena = gvSeleccionarClientesInternos.Rows[e.RowIndex].FindControl("txt_Contrasena") as TextBox;
            DropDownList combo = gvSeleccionarClientesInternos.Rows[e.RowIndex].FindControl("ddlPerfiles") as DropDownList;
            Perfil_EN oPerfil = new Perfil_EN();
            oPerfil.IdPerfil=int.Parse(combo.SelectedValue);
            Empleado_EN emp = new Empleado_EN();
            emp.DNI = int.Parse( dni.Text);
            emp.Usuario.IdUsuario = int.Parse(IdUsuario.Text);
            emp.Nombre = nombre.Text;
            emp.Apellido = apellido.Text;
            emp.Usuario.Nombre = usuario.Text;
            emp.Usuario.Contrasena = contrasena.Text;
            emp.Empresa.Perfiles.Add(oPerfil);
            Empleado_BE be = new Empleado_BE();
            be.EditarEmpleado(emp);
            gvSeleccionarClientesInternos.EditIndex = -1;
            gvbind();
        }
    }
}