using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL;
using Funciones;

namespace Core
{
    public class Cliente_BE
    {
        public Cliente_EN ClienteSeleccionarDni(int Dni)
        {
            Cliente_Mapper map = new Cliente_Mapper();
            return map.ClienteSeleccionarDni(Dni);

        }

        public void CrearClienteInterno(Cliente_EN unCliente)
        {
            Cliente_Mapper map = new Cliente_Mapper();
            map.CrearClienteInterno(unCliente);
        }
    }

    public class Cliente_EN
    {
        public Cliente_EN()
        {
            _empresa = new Empresa_EN();
            TipoDeDocumento = new TipoDeComprobante_EN();
            _usuario = new Usuario_EN();
            Direccion = new List<Direccion_EN>();
            //Cliente_Mapper map = new Cliente_Mapper();
            //_empresa = new Lazy<Empresa_EN>(() => map.SeleccionarEmpresaPorCliente(Documento));
        }
        public int Documento { get; set; }
        //public Empresa_EN Empresa { get; set; }
        private Empresa_EN _empresa = null;

        public Empresa_EN Empresa
        {
            get
            {
                // return _empresa.Value;
                if (_empresa == null)
                {
                    Cliente_Mapper mapp = new Cliente_Mapper();
                    return mapp.SeleccionarEmpresaPorCliente(Documento);

                }

                return _empresa;

            }
            set { _empresa = value; }
            //set { }
        }

        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public TipoDeComprobante_EN TipoDeDocumento { get; set; }
        public string RazonSocial { get; set; }
        //public Usuario_EN Usuario { get; set; }
        private Usuario_EN _usuario;

        public Usuario_EN Usuario
        {
            get
            {
                if (_usuario == null)
                {
                    Cliente_Mapper map = new Cliente_Mapper();
                    return map.SeleccionarUsuarioPorCliente(Documento);
                    //return usuario;
                }
                else
                { return _usuario; }
            }
            set { _usuario = value; }
        }

        public List<Direccion_EN> Direccion { get; set; }
    }

    public class Cliente_Mapper
    {
        public Cliente_EN ClienteSeleccionarDni(int dni)
        {
            SqlServer sql = new SqlServer();
            sql.ConexionIniciarWindowsAuth();
            ResultadoConsulta resultado = new ResultadoConsulta();
            resultado = sql.Ejecutar("Seleccionar_Cliente_DNI @Documento", true, SqlServer.TipoRetorno.Tupla, dni);
            Cliente_EN cliente = new Cliente_EN();
            IDataReader idr = resultado.ResultadoConectado;
            cliente = Mapper.MapearEntidad<Cliente_EN>(resultado.ResultadoConectado, cliente);
            //cliente = DraObjeto.RealizarMapeoSinLista<Cliente_EN>(resultado.ResultadoConectado);
            //Empresa_EN emp = new Empresa_EN();
            //emp = cliente.Empresa;
            //List<Cliente_EN> lcliente = new List<Cliente_EN>();
            //lcliente = DraObjeto.RealizarMapeo<Cliente_EN>(resultado.ResultadoConectado);

            //while (idr.Read())
            //{
            //    cliente.TipoDeDocumento.Descripcion = idr.GetString(idr.GetOrdinal("Descripcion"));
            //    cliente.Documento = idr.GetInt32(idr.GetOrdinal("Documento"));
            //    //cliente.Documento = int.Parse(Cadenas.ValidarRow(idr, "Documento", ""));
            //    cliente.Nombre = idr.GetString(idr.GetOrdinal("Nombre"));
            //    //cliente.Nombre = Cadenas.ValidarRow(idr, "Nombre", "");
            //    cliente.Apellido = idr.GetString(idr.GetOrdinal("Apellido"));
            //    cliente.Usuario.Nombre = idr.GetString(idr.GetOrdinal("NombreUsuario"));
            //    //cliente.Empresa.Nombre = idr.GetString(idr.GetOrdinal("NombreEmpresa"));
            //    //lcliente.Add(cliente); si quiero devolver una lista
            //}

            sql.ConexionFinalizar();
            return cliente;
        }


        public Empresa_EN SeleccionarEmpresaPorCliente(int Documento)
        {
            SqlServer sql = new SqlServer();
            sql.ConexionIniciarWindowsAuth();
            ResultadoConsulta resultado = new ResultadoConsulta();
            resultado = sql.Ejecutar("Seleccionar_Empresa_Por_Usuario @Documento", true, SqlServer.TipoRetorno.Tupla, Documento);
            Empresa_EN emp = new Empresa_EN();
            IDataReader idr = resultado.ResultadoConectado;
            //emp = DraObjeto.RealizarMapeoSinLista<Empresa_EN>(resultado.ResultadoConectado);
            emp = Mapper.MapearEntidad<Empresa_EN>(resultado.ResultadoConectado, emp);
            sql.ConexionFinalizar();
            return emp;
        }

        public Usuario_EN SeleccionarUsuarioPorCliente(int Documento)
        {
            SqlServer sql = new SqlServer();
            sql.ConexionIniciarWindowsAuth();
            ResultadoConsulta resultado = new ResultadoConsulta();
            resultado = sql.Ejecutar("Seleccionar_Usuario_Por_Cliente @Documento", true, SqlServer.TipoRetorno.Tupla, Documento);
            Usuario_EN usuario = new Usuario_EN();
            usuario = Mapper.MapearEntidad<Usuario_EN>(resultado.ResultadoConectado, usuario);
            sql.ConexionFinalizar();
            return usuario;
        }

        public void CrearClienteInterno(Cliente_EN unCliente)
        {
            SqlServer sql = new SqlServer();

            try
            {
                //se crea el usuario para la empresa por defecto
                
                sql.TransaccionIniciar();
                ResultadoConsulta result = new ResultadoConsulta();
                //ejecutarscalar
                result = sql.Ejecutar("", true, SqlServer.TipoRetorno.Escalar, unCliente.Documento, unCliente.Nombre, unCliente.Apellido, unCliente.Empresa.IdEmpresa, unCliente.Usuario.Nombre);
                Int32 idcliente;
                idcliente = Convert.ToInt32(result.ResultadoEscalar);
                //se insertan todos los perfiles seleccionados que POR AHORA solo van a ser UNO
                foreach (Perfil_EN item in unCliente.Empresa.Perfiles)
                {
                    sql.Ejecutar("", true, SqlServer.TipoRetorno.SinResultado, idcliente, item.IdPerfil);
                }
                sql.TransaccionAceptar();
            }
            catch (Exception)
            {

                sql.TransaccionCencelar();
            }
        }
    }

}
