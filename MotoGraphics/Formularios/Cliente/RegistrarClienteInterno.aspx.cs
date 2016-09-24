using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;
namespace MG.Formularios.Cliente
{
    public partial class RegistrarClienteInterno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Perfil_BE perfiles = new Perfil_BE();
                List<Perfil_EN> lperfiles = new List<Perfil_EN>();
                lperfiles = perfiles.SeleccionarPerfiles();
                ddlPermisos.DataValueField = "IdPerfil";
                ddlPermisos.DataTextField = "nombre";
                ddlPermisos.DataSource = lperfiles;
                ddlPermisos.DataBind();

            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Empleado_BE be = new Empleado_BE();
            Empleado_EN oEmpleado = new Empleado_EN();
            oEmpleado.DNI = Convert.ToInt32(txtDNI.Text);
            oEmpleado.Nombre = txtNombre.Text;
            oEmpleado.Apellido = txtApellido.Text;
            oEmpleado.Usuario.Contrasena = txtcontrasena.Text;
            oEmpleado.Usuario.Nombre = txtMail.Text;
            Perfil_EN oPerfil = new Perfil_EN();
            oPerfil.IdPerfil = Convert.ToInt32(ddlPermisos.SelectedValue);
            oPerfil.Nombre = ddlPermisos.SelectedItem.ToString();
            oEmpleado.Empresa.Perfiles.Add(oPerfil);
            be.InsertarEmpelado(oEmpleado);


        }
        
    }
}