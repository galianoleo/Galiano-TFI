using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace Core
{
    public class Articulo_BE
    {
        Articulo_Mapper map = new Articulo_Mapper();
        public void InsertarArticulo(Articulo_EN articulo)
        {
            Articulo_Mapper mapp = new Articulo_Mapper();
            mapp.InsertarArticulo(articulo);
        }

        public List<Articulo_EN> SeleccionarArticulos()
        {
            List<Articulo_EN> larticulo = new List<Articulo_EN>();
            larticulo = map.SeleccionarArticulos();
            Articulo_EN oArticulo = new Articulo_EN();
            foreach (Articulo_EN item in larticulo)
            {
                oArticulo.Categoria = item.Categoria;
            }
            return larticulo; 
        }

        public void EditarArticulo(Articulo_EN articulo)
        {
            map.EditarArticulo(articulo);
        }
        public void EliminarArticulo(int IdArticulo)
        {
            map.EliminarArticulo(IdArticulo);
        }

        
    }

    public class Articulo_EN
    {
        public Articulo_EN()
        {
            Empresa = new Empresa_EN();
            //_categoria = new CategoriaArticulo_EN();
        }
        public int IdArticulo { get; set; }
        public string Descripcion { get; set; }
        public decimal Importe { get; set; }
        public Empresa_EN Empresa { get; set; }

        public int IdCategoria { get; set; }
        
        private CategoriaArticulo_EN _categoria;

        public CategoriaArticulo_EN Categoria
        {
            get {
                if (_categoria == null)
                {
                    Articulo_Mapper map = new Articulo_Mapper();
                _categoria=map.SeleccionarCategoria(IdCategoria);
                }
                return _categoria; }
            set { _categoria = value; }
        }
        
    }

    class Articulo_Mapper
    {
        SqlServer sql = new SqlServer();
        ResultadoConsulta resul = new ResultadoConsulta();
        public void InsertarArticulo(Articulo_EN articulo)
        {
            
            sql.ConexionIniciarWindowsAuth();
           
            sql.Ejecutar("Insertar_Articulo @Descripcion @Importe @IdCategoria @IdEmpresa", true, SqlServer.TipoRetorno.SinResultado, articulo.Descripcion, articulo.Importe, articulo.Categoria.IdCategoria, 1);
            sql.ConexionFinalizar();

        }
        public List<Articulo_EN> SeleccionarArticulos()
        {
            
            
            sql.ConexionIniciarWindowsAuth();
            resul=sql.Ejecutar("Seleccionar_Articulos", true, SqlServer.TipoRetorno.Tupla);
            List<Articulo_EN> lArticulo = new List<Articulo_EN>();
            Articulo_EN oArticulo = new Articulo_EN();
            lArticulo = Mapper.MapearEntidades<Articulo_EN>(resul.ResultadoConectado);
            CategoriaArticulo_EN categoria = new CategoriaArticulo_EN();
            
            return lArticulo;
        }

        public CategoriaArticulo_EN SeleccionarCategoria(int IdCategoria)
        {
            CategoriaArticulo_Mapper mapCategoria = new CategoriaArticulo_Mapper();
            List<CategoriaArticulo_EN> lCategoriaArticulo = new List<CategoriaArticulo_EN>();
            lCategoriaArticulo = mapCategoria.SeleccionarCategoriaArticulo();
            CategoriaArticulo_EN categoria = new CategoriaArticulo_EN();
           
            foreach (CategoriaArticulo_EN item in lCategoriaArticulo)
            {
                if (item.IdCategoria == IdCategoria)
                {
                    categoria = item;
                }
            }
            
            return categoria;

        }

        public void EditarArticulo(Articulo_EN articulo)
        {
            sql.ConexionIniciarWindowsAuth();
            sql.Ejecutar("Editar_Articulo @IdArticulo @Descripcion @Importe @IdCategoria", 
                        true, 
                        SqlServer.TipoRetorno.SinResultado, 
                        articulo.IdArticulo,
                        articulo.Descripcion,
                        articulo.Importe,
                        articulo.IdCategoria);
            sql.ConexionFinalizar();
        }

        public void EliminarArticulo(int IdArticulo)
        {
            sql.ConexionIniciarWindowsAuth();
            sql.Ejecutar("Eliminar_Articulo @IdArticulo", true, SqlServer.TipoRetorno.SinResultado, IdArticulo);
            sql.ConexionFinalizar();
        }
        
    }
}
