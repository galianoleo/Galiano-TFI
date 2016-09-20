using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Bitacora_BE
    {
    }

    public class Bitacora_EN
    {
        public Bitacora_EN()
        {
            Usuario = new Usuario_EN();
        }
        public int Fila { get; set; }
        public string Cadena { get; set; }
        public DateTime Fecha { get; set; }
        public Usuario_EN Usuario { get; set; }
    }

    public class Bitacora_Mapper
    {
    }

}
