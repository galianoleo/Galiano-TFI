using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Remito_BE
    {
    }

    public class Remito_EN
    {
        public Remito_EN()
        {
            ldetalles = new List<RemitoDetalle_EN>();
        }
        public int IdRemito { get; set; }
        public DateTime Fecha { get; set; }
        public Comprobante_EN Comprobante { get; set; }
        public int IdTipoDeComprobante { get; set; }
        public List<RemitoDetalle_EN> ldetalles { get; set; }   
    }

    public class Remito_Mapper
    {
    }

}
