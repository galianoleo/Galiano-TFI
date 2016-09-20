using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Direccion_BE
    {
    }

    public class Direccion_EN
    {
        public Direccion_EN()
        {
            Ciudad = new Ciudad_EN();

        }
        public int IdDIreccion { get; set; }
        public string Calle { get; set; }
        public int Numero { get; set; }
        public int Piso { get; set; }
        public string Departamento { get; set; }
        public Ciudad_EN Ciudad { get; set; }

    }

    public class Direccion_Mapper
    {
    }

}
