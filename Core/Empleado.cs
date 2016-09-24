using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Data.SqlClient;
using DAL;

namespace Core
{
    public class Empleado_BE
    {
        public void InsertarEmpelado(Empleado_EN unEmpleado)
        {
            Empleado_Mapper map = new Empleado_Mapper();
            map.InsertarEmpleado(unEmpleado);
        }

        public List<Empleado_EN> SeleccionarEmpleados()
        {
            Empleado_Mapper map = new Empleado_Mapper();
            return map.SeleccionarEmpelados();
        }

        public void ElimiarEmpleado(Empleado_EN unEmpelado)
        {
            Empleado_Mapper map = new Empleado_Mapper();
            map.EliminarEmpleado(unEmpelado);
        }

        public void EditarEmpleado(Empleado_EN unEmpleado)
        {
            Empleado_Mapper map = new Empleado_Mapper();
            map.EditarEmpleado(unEmpleado);
        }
    }

    public class Empleado_EN
    {
        public Empleado_EN()
        {
            Empresa = new Empresa_EN();
            Usuario = new Usuario_EN();
        }
        public int DNI { get; set; }
        public Empresa_EN Empresa { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int IdUsuario { get; set; }
        public Usuario_EN Usuario { get; set; }

    }

    public class Empleado_Mapper
    {
        public void InsertarEmpleado(Empleado_EN unEmpleado)
        {
            SqlServer sql = new SqlServer();
            try
            {
                sql.ConexionIniciarWindowsAuth();
                sql.TransaccionIniciar();
                ResultadoConsulta result = new ResultadoConsulta();
                Usuario_BE usuario = new Usuario_BE();
                int IdUsuario;
                IdUsuario = usuario.InsertarUsuario(unEmpleado.Usuario, sql);

                result = sql.Ejecutar("Insertar_Empleado @DNI @IdEmpresa @Nombre @Apellido @IdUsuario",
                                   true,
                                   SqlServer.TipoRetorno.SinResultado,
                                   unEmpleado.DNI,
                                   1,
                                   unEmpleado.Nombre,
                                   unEmpleado.Apellido,
                                   IdUsuario);



                foreach (Perfil_EN item in unEmpleado.Empresa.Perfiles)
                {
                    sql.Ejecutar("Insertar_Usuarios_Empresas_Perfiles @IdUsuario @IdEmpresa @IdPerfil",
                                    true,
                                    SqlServer.TipoRetorno.SinResultado,
                                    IdUsuario,
                                    1,
                                    item.IdPerfil);
                }
                sql.TransaccionAceptar();
                sql.ConexionFinalizar();
            }
            catch (Exception)
            {

                sql.TransaccionCencelar();
                sql.ConexionFinalizar();
            }
        }

        public List<Empleado_EN> SeleccionarEmpelados()
        {
            SqlServer sql = new SqlServer();
            ResultadoConsulta result = new ResultadoConsulta();
            sql.ConexionIniciarWindowsAuth();
            result = sql.Ejecutar("Seleccionar_Empleados", true, SqlServer.TipoRetorno.Tupla);
            List<Empleado_EN> lEmpleado = new List<Empleado_EN>();
            //lEmpleado = Mapper.MapearEntidades<Empleado_EN>(result.ResultadoConectado);
            Empleado_EN unEmpleado;
            IDataReader r = result.ResultadoConectado;

            while (r.Read())
            {
                unEmpleado = new Empleado_EN();
                unEmpleado.DNI = r.GetInt32(r.GetOrdinal("DNI"));
                unEmpleado.Nombre = r.GetString(r.GetOrdinal("Nombre"));
                unEmpleado.Apellido = r.GetString(r.GetOrdinal("Apellido"));
                unEmpleado.Usuario.IdUsuario = r.GetInt32(r.GetOrdinal("IdUsuario"));
                unEmpleado.Usuario.Nombre = r.GetString(r.GetOrdinal("Usuario"));
                unEmpleado.Usuario.Contrasena = r.GetString(r.GetOrdinal("Contrasena"));
                Perfil_EN oPerfil = new Perfil_EN();
                oPerfil.IdPerfil = r.GetInt32(r.GetOrdinal("IdPerfil"));
                oPerfil.Nombre = r.GetString(r.GetOrdinal("Perfil"));
                unEmpleado.Empresa.Perfiles.Add(oPerfil);
                lEmpleado.Add(unEmpleado);
            }
            sql.ConexionFinalizar();
            return lEmpleado;
        }

        public void EliminarEmpleado(Empleado_EN unEmpleado)
        {
            SqlServer sql = new SqlServer();
            try
            {
                sql.ConexionIniciarWindowsAuth();
                sql.TransaccionIniciar();
                sql.Ejecutar("Eliminar_Empleado", true, SqlServer.TipoRetorno.SinResultado, unEmpleado.Usuario.IdUsuario, unEmpleado.DNI, 1);
                sql.TransaccionAceptar();
                sql.ConexionFinalizar();
            }
            catch (Exception ex)
            {
                sql.TransaccionCencelar();
                sql.ConexionFinalizar();
                throw ex;
            }

        }

        public void EditarEmpleado(Empleado_EN unEmpleado)
        {
            SqlServer sql = new SqlServer();
            try
            {
                sql.ConexionIniciarWindowsAuth();
                sql.TransaccionIniciar();
                sql.Ejecutar("Editar_Empleado @dni @idusuario @idempresa @nombre @apellido @usuario @contrasena @idperfil", 
                            true, 
                            SqlServer.TipoRetorno.SinResultado, 
                            unEmpleado.DNI, 
                            unEmpleado.Usuario.IdUsuario, 
                            1, 
                            unEmpleado.Nombre, 
                            unEmpleado.Apellido, 
                            unEmpleado.Usuario.Nombre,
                            unEmpleado.Usuario.Contrasena,
                            unEmpleado.Empresa.Perfiles[0].IdPerfil);
                sql.TransaccionAceptar();
                sql.ConexionFinalizar();
            }
            catch (Exception ex)
            {
                sql.TransaccionCencelar();
                sql.ConexionFinalizar();
                throw ex;
            }
        }
    }

}
