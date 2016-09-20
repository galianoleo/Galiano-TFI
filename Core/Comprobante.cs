using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace Core
{
    public class Comprobante_BE
    {
        public void InsertarComprobante(Comprobante_EN comporbante, List<ComprobanteDetalle_EN> detalles)
        {
            SqlServer sql = new SqlServer();

        }
    }

    public class Comprobante_EN
    {
        public Comprobante_EN()
        {
            TipoDeComprobante = new TipoDeComprobante_EN();
            Empresa = new Empresa_EN();
            FormaDePago = new FormaDePago_EN();
            Empleado = new Empresa_EN();
            Transaccion = new CuentaCorriente_EN();
            lComprobanteDetalle = new List<ComprobanteDetalle_EN>();
            Impuesto = new List<Impuesto_EN>();
        }

        public TipoDeComprobante_EN TipoDeComprobante { get; set; }
        public int IdComprobante { get; set; }
        public int IdSucursal { get; set; }
        public Empresa_EN Empresa { get; set; }
        public Cliente_EN Cliente { get; set; }
        public string DireccionDeEnvio { get; set; }
        public string DireccionDeFacturacion { get; set; }
        public DateTime Fecha { get; set; }
        public FormaDePago_EN FormaDePago { get; set; }
        public Empresa_EN Empleado { get; set; }
        public double SubTotal { get; set; }
        public double Total { get; set; }
        public CuentaCorriente_EN Transaccion { get; set; }
        public List<ComprobanteDetalle_EN> lComprobanteDetalle { get; set; }
        public List<Impuesto_EN> Impuesto { get; set; }

    }

    public class Comprobante_Mapper
    {
    }

}
