using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Perfil_BE
    {
    }

    public class Perfil_EN
    {
        public Perfil_EN()
        {
            lPermisos = new List<Permiso_EN>();
        }
        public int IdPerfil { get; set; }
        public string Nombre { get; set; }
        public List<Permiso_EN> lPermisos { get; set; }

    }

    public class Perfil_Mapper
    {
    }


}
