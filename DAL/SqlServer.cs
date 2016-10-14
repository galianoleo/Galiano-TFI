using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Funciones;
namespace DAL
{
    public class SqlServer
    {
        private SqlConnection unaConexion;
        private SqlTransaction unaTransaccion;

        private ResultadoTipoConexion _resultadoTipoConexion;
        public enum ResultadoTipoConexion
        {
            Conectado,
            DesconectadoDataset,
            DesconectadoDatatable

        }
        public enum TipoRetorno
        {
            Escalar,
            Tupla,
            SinResultado 
        }
        public void ConexionFinalizar()
        {
            unaConexion.Close();
        }

        public void ConexionIniciar(ConfiguracionBaseDatos configuracion)
        {
            string cadena = ObtenerConnectionString(configuracion.Servidor, configuracion.Catalogo, configuracion.Usuario, configuracion.Pass);
            _resultadoTipoConexion = ResultadoTipoConexion.Conectado;
            unaConexion = new SqlConnection(cadena);
            unaConexion.Open();
        }

        public void ConexionIniciarWindowsAuth()
        {
            string servidor = @"L3ogaliano-pc\SQLEXPRESS";
            //string servidor = "OMCPEAYDC0024";
            string db = "TEST_TFI";
            string cadena = String.Format("Server={0}; Database={1}; Trusted_Connection={2}", servidor, db, true);
            _resultadoTipoConexion = ResultadoTipoConexion.Conectado;
            unaConexion = new SqlConnection(cadena);
            unaConexion.Open();
        }

        public ResultadoConsulta Ejecutar(string query, bool esSP, TipoRetorno tipoRetorno, params object[] parametros)
        {
            SqlCommand unComando = new SqlCommand();
            ResultadoConsulta Resultado = new ResultadoConsulta();
            unComando.Connection = unaConexion;
            unComando.Transaction = unaTransaccion;
            unComando.CommandText = Cadenas.TextoSinBasuraDerecha(query, "@");
            if (esSP)
            {
                unComando.CommandType = CommandType.StoredProcedure;
            }
            else
            {
                unComando.CommandType = CommandType.Text;
            }
            
            List<string> parametrosEnQuery = Cadenas.ObtenerParametrosEnQuery(query);
            for (int i = 0; i <= (parametrosEnQuery.Count - 1); i++)
            {
                unComando.Parameters.Add(new SqlParameter(parametrosEnQuery[i], parametros[i]));
            }
            switch ((tipoRetorno))
            {

                case TipoRetorno.Escalar:
                    Resultado.ResultadoEscalar = unComando.ExecuteScalar();

                    break;
                case TipoRetorno.Tupla:
                    Resultado = RealizarEjecucionTupla(unComando);

                    break;
                case TipoRetorno.SinResultado:
                    unComando.ExecuteNonQuery();

                    break;
            }
            return Resultado;

        }

        public void TransaccionAceptar()
        {
            unaTransaccion.Commit();
        }

        public void TransaccionCencelar()
        {
            unaTransaccion.Rollback();
        }

        public void TransaccionIniciar()
        {
            unaTransaccion = unaConexion.BeginTransaction();
        }


        private string ObtenerConnectionString(string servidor, string basedatos, string usuario, string clave)
        {
            return String.Format("data source={0};initial catalog={1};UID={2};PWD={3}", servidor, basedatos, usuario, clave);
        }

        private ResultadoConsulta RealizarEjecucionTupla(SqlCommand unComando)
        {
            ResultadoConsulta resultadoConsulta = new ResultadoConsulta();
            switch (_resultadoTipoConexion)
            {
                case ResultadoTipoConexion.Conectado:
                    resultadoConsulta.ResultadoConectado = unComando.ExecuteReader();
                    break;
                case ResultadoTipoConexion.DesconectadoDataset:
                    SqlDataAdapter adapter;
                    adapter = new SqlDataAdapter();
                    adapter.SelectCommand = unComando;
                    DataSet dataset = new DataSet();
                    adapter.Fill(dataset);
                    dataset.Tables[0].TableName = "tResultado";
                    resultadoConsulta.ResultadoDesconectado = dataset;
                    break;
                case ResultadoTipoConexion.DesconectadoDatatable:
                    IDataReader dr = unComando.ExecuteReader();
                    DataTable datatable = new DataTable();
                    datatable.Load(dr);
                    resultadoConsulta.ResultadoDesconectadoTable = datatable;
                    break;
                default:
                    break;
            }
            return resultadoConsulta;
        }
    }
}
