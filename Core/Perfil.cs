using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace Core
{
    public class Perfil_BE
    {
        public List<Perfil_EN> SeleccionarPerfiles()
        {
            Perfil_Mapper map = new Perfil_Mapper();
            return map.SeleccionarPerfiles();
        }
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
        SqlServer sql = new SqlServer();
        public List<Perfil_EN> SeleccionarPerfiles()
        {
            sql.ConexionIniciarWindowsAuth();
            ResultadoConsulta result = new ResultadoConsulta();
            result = sql.Ejecutar("select idperfil, nombre from perfiles", false, SqlServer.TipoRetorno.Tupla);
            List<Perfil_EN> lPerfiles = new List<Perfil_EN>();
            lPerfiles = Mapper.MapearEntidades<Perfil_EN>(result.ResultadoConectado);
            sql.ConexionFinalizar();

            return lPerfiles;
        }

        
    }


}
