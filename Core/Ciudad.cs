using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Ciudad_BE
    {
    }

    public class Ciudad_EN
    {
        public Ciudad_EN()
        {
            Direcciones = new List<Direccion_EN>();
        }
        public int IdCiudad { get; set; }
        public string Descripcion { get; set; }
        public List<Direccion_EN> Direcciones { get; set; }
    }

    public class Ciudad_Mapper
    {
    }


}
