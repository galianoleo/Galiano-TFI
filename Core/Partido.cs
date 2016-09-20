using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Partido_BE
    {
    }

    public class Partido_EN
    {
        public Partido_EN()
        {
            lciudad = new List<Ciudad_EN>();
        }
        public int IdPartido { get; set; }
        public Provincia_EN Provincia { get; set; }
        public string Descripcion { get; set; }
        public List<Ciudad_EN> lciudad { get; set; }
    }

    public class Partido_Mapper
    {
    }

}
