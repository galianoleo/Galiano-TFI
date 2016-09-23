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
            Cliente_BE BeCliente = new Cliente_BE();
            Cliente_EN oCliente = new Cliente_EN();
            oCliente.Apellido = "perez";
            oCliente.Empresa.IdEmpresa = 1;
            oCliente.Usuario.Nombre = "unusuario";
            List<Perfil_EN> lPerfiles = new List<Perfil_EN>();
            oCliente.Empresa.Perfiles = lPerfiles;
            BeCliente.CrearClienteInterno(oCliente);
        }
        
    }
}