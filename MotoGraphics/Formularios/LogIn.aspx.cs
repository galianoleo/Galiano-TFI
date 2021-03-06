﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core;
using Seguridad;

namespace MG.Formilarios
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Remove("UsuarioActivo");
                //Sesion s = Sesion.GetInstance();
                //if (s.Mail == null)
                //{
                //    //Response.Redirect("LogIn.aspx", false);
                   
                //}
                //else
                //{
                //    Response.Redirect("Index.aspx", false);
                //}
            }
            
        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            
            Usuario_BE usuarioBE = new Usuario_BE();
            Usuario_EN Usuario = new Usuario_EN();
            Usuario = usuarioBE.IniciarSesion(inputPassword.Text, inputEmail.Text);
            if (Usuario.Nombre != null)
            { 
                Sesion s = Sesion.GetInstance();
                s.Mail = Usuario.Nombre;
                s.Perfil = Usuario.Perfil;
                Sesion.GetInstance();
                Session.Add("UsuarioActivo", s.Mail);
                Session.Add("UsuarioPerfil", s.Perfil);
                if (Usuario.Perfil == "Cliente")
                {
                    Response.Redirect("Inicio.aspx", false);

                }
                else
                {
                    Response.Redirect("Index.aspx", false);
                }
            }
        }
    }
}