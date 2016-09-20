using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class CuentaCorriente_BE
    {
    }

    public class CuentaCorriente_EN
    {
        public CuentaCorriente_EN() 
        {
            Cliente = new Cliente_EN();
            Empresa = new Empresa_EN();
            TipoDeDocumento = new TipoDeDocumento_EN();
        }
        public int IdTransaccion { get; set; }
        public string Descripcion { get; set; }
        public double Importe { get; set; }
        public decimal Saldo { get; set; }
        public Cliente_EN Cliente { get; set; }
        public Empresa_EN Empresa { get; set; }
        public TipoDeDocumento_EN TipoDeDocumento { get; set; }

    }

    public class CuentaCorriente_Mapper
    {
    }

}
