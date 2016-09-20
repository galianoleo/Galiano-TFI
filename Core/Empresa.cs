using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Empresa_BE
    {
    }

    public class Empresa_EN
    {
        public Empresa_EN()
        {
            Perfiles = new List<Perfil_EN>();
            lUsuarios = new List<Usuario_EN>();
        }
        public int IdEmpresa { get; set; }
        public string Nombre { get; set; }
        public List<Perfil_EN> Perfiles { get; set; }
        public List<Usuario_EN> lUsuarios { get; set; }
    }

    public class Empresa_Mapper
    {
    }

}
