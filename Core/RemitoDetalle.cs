using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class RemitoDetalle_BE
    {
    }

    public class RemitoDetalle_EN
    {
        public RemitoDetalle_EN()
        {
 
        }
        public int IdRemitoDetalle { get; set; }
        public Articulo_EN Articulo { get; set; }
        public decimal Cantidad { get; set; }
    }

    public class RemitoDetalle_Mapper
    {
    }

}
