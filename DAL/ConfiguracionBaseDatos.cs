using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ConfiguracionBaseDatos
    {
        public string Servidor { get; set; }
        public string Catalogo { get; set; }
        public string Usuario { get; set; }
        public string Pass { get; set; }
    }
}
