using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class ResultadoConsulta
    {
        public Object ResultadoEscalar { get; set; }
        public DataSet ResultadoDesconectado { get; set; }
        public IDataReader ResultadoConectado { get; set; }
        public DataTable ResultadoDesconectadoTable { get; set; }
    }
}
