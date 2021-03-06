﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;
using System.Web.Services;
using Seguridad;
namespace MG.Formularios.Cliente
{
    public partial class RegistrarCliente : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Sesion s = Sesion.GetInstance();
                if (s.Mail == null)
                {
                    Pais_BE be = new Pais_BE();
                    List<Pais_EN> lPais = new List<Pais_EN>();
                    lPais = be.SeleccionarPaises();
                    ListItem lItem;
                    foreach (Pais_EN Pais in lPais)
                    {
                        lItem = new ListItem();
                        lItem.Value = Pais.IdPais.ToString();
                        lItem.Text = Pais.Descripcion;
                        sPais.Items.Add(lItem);
                    }
                }
                else
                {
                    Response.Redirect("PerfilCliente.aspx", false);
                }
            }
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

        protected void btnAceptar_ServerClick(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_ServerClick(object sender, EventArgs e)
        {

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