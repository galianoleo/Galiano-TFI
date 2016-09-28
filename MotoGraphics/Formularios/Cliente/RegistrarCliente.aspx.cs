using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;
using System.Web.Services;

namespace MG.Formularios.Cliente
{
    public partial class RegistrarCliente : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            ListItem lis = new ListItem();
            lis.Value = Convert.ToString(1);
            lis.Text = "Argentina";
            
            lPais.Items.Add(lis);
        }

        
        [WebMethod]
        public static void test()
        {
            
        }

        [WebMethod]
        public static void btnRegistrarCliente(string mail, int dni)
        {
            Cliente_BE be = new Cliente_BE();
           
            bool validador = be.ValidarExistenciaMial(mail);

        }

        //protected void btnRegistrar_Click(object sender, EventArgs e)
        //{
        //    Cliente_BE be = new Cliente_BE();
        //    bool validador = be.ValidarExistenciaMial(txtEmail.Text);
        //    if (validador)
        //    {
        //        //equiste mail
        //    }
        //    else
        //    {
        //        validador = be.ValidarExistenciaDNI(Convert.ToInt32(txtDNI.Text));
        //        if (validador)
        //        {
        //            //existe el dni
        //        }
        //        else
        //        {
        //            //no existe mail, entonces registro cliente
        //        }
        //    }
        //}

        //protected void btnCancelar_Click(object sender, EventArgs e)
        //{

        //}
    }
}