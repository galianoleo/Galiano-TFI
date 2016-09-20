using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;

namespace MG.Formilarios
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            Usuario_BE usuarioBE = new Usuario_BE();
            Usuario_EN Usuario = new Usuario_EN();
            Usuario = usuarioBE.IniciarSesion(inputPassword.Text, inputEmail.Text);
        }
    }
}