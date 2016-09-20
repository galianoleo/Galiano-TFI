using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Pago_BE
    {
    }

    public class Pago_EN
    {
        public Pago_EN()
        {
            FormaDePago = new List<FormaDePago_EN>();
            Transaccion = new List<CuentaCorriente_EN>();
            Cliente = new List<Cliente_EN>();
            Empresa = new List<Empresa_EN>();
            TipoDeDocumento = new List<TipoDeDocumento_EN>();
        }
        public int IdPago { get; set; }
        public DateTime Fecha { get; set; }
        public double Importe { get; set; }
        public List<FormaDePago_EN> FormaDePago { get; set; }
        public List<CuentaCorriente_EN> Transaccion { get; set; }
        public List<Cliente_EN> Cliente { get; set; }
        public List<Empresa_EN> Empresa { get; set; }
        public List<TipoDeDocumento_EN> TipoDeDocumento { get; set; }
    }

    public class Pago_Mapper
    {
    }


}
