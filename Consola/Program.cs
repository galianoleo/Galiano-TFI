using Core;
using System.Collections.Generic;
namespace Consola
{
    class Program
    {
        static void Main(string[] args)
        {
            //Usuario_Mapper oUsuario = new Usuario_Mapper();
            //oUsuario.execute();
            //Cliente_BE clienteBE = new Cliente_BE();
            //Cliente_EN oCliente = new Cliente_EN();
            //oCliente = clienteBE.ClienteSeleccionarDni(32673439);
            
            //string str = oCliente.Usuario.Nombre;

            //Empresa_EN emp = new Empresa_EN();
            //emp = oCliente.Empresa;
            //Usuario_BE oUsuario = new Usuario_BE();
            //List<Usuario_EN> lusuario = new List<Usuario_EN>();
            //lusuario = oUsuario.SeleccionarUsuario();

            CategoriaArticulo_BE cat = new CategoriaArticulo_BE();
            List<CategoriaArticulo_EN> lcategoria = new List<CategoriaArticulo_EN>();
            lcategoria = cat.SeleccionarCategoriaArticulo();

            Articulo_BE articuloBE = new Articulo_BE();
            List<Articulo_EN> larticulo = new List<Articulo_EN>();
            larticulo = articuloBE.SeleccionarArticulos();

        }
        
    }
}
