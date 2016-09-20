using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace Core
{
    public class CategoriaArticulo_BE
    {
        public List<CategoriaArticulo_EN> SeleccionarCategoriaArticulo()
        {
            CategoriaArticulo_Mapper map = new CategoriaArticulo_Mapper();
            return map.SeleccionarCategoriaArticulo();
        }
    }

    public class CategoriaArticulo_EN
    {
        public CategoriaArticulo_EN()
        {
            Empresa = new Empresa_EN();
        }
        public int IdCategoria { get; set; }
        public string Descripcion { get; set; }

        private Empresa_EN _empresa;

        public Empresa_EN Empresa
        {
            get { return _empresa; }
            set { _empresa = value; }
        }
        
        
    }

     class CategoriaArticulo_Mapper
    {
        public List<CategoriaArticulo_EN> SeleccionarCategoriaArticulo()
        {
            SqlServer sql = new SqlServer();
            sql.ConexionIniciarWindowsAuth();
            ResultadoConsulta result = new ResultadoConsulta();
            result = sql.Ejecutar("Seleccionar_Categoria_Articulo @IdEmpresa", true, SqlServer.TipoRetorno.Tupla, 1); //Empresa = 1 MotoGraphics
            List<CategoriaArticulo_EN> lcatarticulo = new List<CategoriaArticulo_EN>();
            lcatarticulo = Mapper.MapearEntidades<CategoriaArticulo_EN>(result.ResultadoConectado);
            sql.ConexionFinalizar();
            return lcatarticulo;

        }
    }

}
