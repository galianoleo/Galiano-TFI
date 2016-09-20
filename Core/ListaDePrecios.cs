using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class ListaDePrecio_BE
    {
    }

    public class ListaDePrecio_EN
    {
        public ListaDePrecio_EN()
        {
            Articulo = new List<Articulo_EN>();
        }
        public int IdListaDePrecio { get; set; }
        public List<Articulo_EN> Articulo { get; set; }
        public double Precio { get; set; }
        public DateTime VigenciaDesde { get; set; }
        public DateTime VigenciaHasta { get; set; }
    }

    public class ListaDePrecio_Mapper
    {
    }

}
