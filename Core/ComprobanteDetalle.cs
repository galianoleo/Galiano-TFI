using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class ComprobanteDetalle_BE
    {
        public void InsertarDetalle(Comprobante_EN detalle)
        { 
        
        }
    }

    public class ComprobanteDetalle_EN
    {
        public ComprobanteDetalle_EN()
        {
            Articulo = new Articulo_EN();
        }
        public int IdComprobanteDetalle { get; set; }
        public Articulo_EN Articulo { get; set; }
        public int Cantidad { get; set; }
        public double PrecioUnitario { get; set; }
    }

    public class ComprobanteDetalle_Mapper
    {
    }

}
