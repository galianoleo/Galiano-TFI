using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;
namespace Core
{
    public class Usuario_BE
    {
        public Usuario_EN IniciarSesion(string pass, string nombre)
        {
            Usuario_Mapper map = new Usuario_Mapper();
            return map.IniciarSesion(pass, nombre);
        }

        public List<Usuario_EN> SeleccionarUsuario()
        {
            Usuario_Mapper map = new Usuario_Mapper();
            return map.SeleccionarUsuarios();
        }

        public int InsertarUsuario(Usuario_EN unUsuario, SqlServer sql)
        {
            Usuario_Mapper map = new Usuario_Mapper();
            return map.InsertarUsuario(unUsuario, sql);
        }
    }

    public class Usuario_EN
    {
        public int IdUsuario { get; set; }
        public string Contrasena { get; set; }
        public string Nombre { get; set; }
    }

    public class Usuario_Mapper
    {
        public void execute()
        {
            SqlServer os = new SqlServer();
            os.ConexionIniciarWindowsAuth();
            //os.Ejecutar("insert into usuario values(2,'rantunes')", false, SqlServer.TipoRetorno.SinResultado);
            ResultadoConsulta resultado = new ResultadoConsulta();
            resultado = os.Ejecutar("Seleccionar_Usuarios", false, SqlServer.TipoRetorno.Tupla);
            List<Usuario_EN> list = new List<Usuario_EN>();
            list = Mapper.MapearEntidades<Usuario_EN>(resultado.ResultadoConectado);

            resultado = os.Ejecutar("Seleccionar_Usuarios_ID @Id", true, SqlServer.TipoRetorno.Tupla, 1);
            Usuario_EN us = new Usuario_EN();
            us = Mapper.MapearEntidad<Usuario_EN>(resultado.ResultadoConectado, us);

            os.ConexionFinalizar();

        }

        public Usuario_EN IniciarSesion(string pass, string nombre)
        {
            SqlServer sql = new SqlServer();
            sql.ConexionIniciarWindowsAuth();
            ResultadoConsulta resultado = new ResultadoConsulta();
            resultado = sql.Ejecutar("IniciarSesion @Usuario @Pass", true, SqlServer.TipoRetorno.Tupla, nombre, pass);
            Usuario_EN usuario = new Usuario_EN();
            usuario = Mapper.MapearEntidad<Usuario_EN>(resultado.ResultadoConectado, usuario);
            sql.ConexionFinalizar();
            return usuario;
        }

        public List<Usuario_EN> SeleccionarUsuarios()
        {
            SqlServer sql = new SqlServer();
            sql.ConexionIniciarWindowsAuth();
            ResultadoConsulta result = new ResultadoConsulta();
            result = sql.Ejecutar("Usuarios_Seleccionar", true, SqlServer.TipoRetorno.Tupla);
            Usuario_EN oUsuario ;
            List<Usuario_EN> lusuario = new List<Usuario_EN>();
            IDataReader dr = result.ResultadoConectado;
            while (dr.Read())
            {
                oUsuario = new Usuario_EN();
                oUsuario.IdUsuario = dr.GetInt32(dr.GetOrdinal("IdUsuario"));
                if(dr["Nombre"] != DBNull.Value)
                {
                    oUsuario.Nombre = dr["Nombre"].ToString();                
                }

                oUsuario.Contrasena = dr.GetString(dr.GetOrdinal("Contrasena"));
                lusuario.Add(oUsuario);

            }
            return lusuario;
        }

        public int InsertarUsuario(Usuario_EN unUsuario, SqlServer sql)
        {
            try
            {
                ResultadoConsulta resul = new ResultadoConsulta();
                resul = sql.Ejecutar("Insertar_Usuario @Contrasena @Nombre", 
                                        true, 
                                        SqlServer.TipoRetorno.Escalar, 
                                        unUsuario.Contrasena, 
                                        unUsuario.Nombre);
                return Convert.ToInt32(resul.ResultadoEscalar);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }

}
