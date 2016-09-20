using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Carrito_BE
    {
    }
    public class Carrito_EN
    {
        public Carrito_EN()
        {
            Articulo = new Articulo_EN();
            TipoDeDocumento = new TipoDeDocumento_EN();
        }
        public Articulo_EN Articulo { get; set; }
        public TipoDeDocumento_EN TipoDeDocumento { get; set; }
       
    }

    public class Carrito_Mapper
    {
    }

}
