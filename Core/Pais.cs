using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace Core
{
    public class Pais_BE
    {
        public List<Pais_EN> SeleccionarPaises()
        {
            Pais_Mapper map = new Pais_Mapper();
            return map.SeleccionarPaises();
        }
    }

    public class Pais_EN
    {
        public int IdPais { get; set; }
        public string Descripcion { get; set; }
    }

    class Pais_Mapper
    {
        public List<Pais_EN> SeleccionarPaises()
        {
            SqlServer sql = new SqlServer();
            ResultadoConsulta resul = new ResultadoConsulta();
            sql.ConexionIniciarWindowsAuth();
            resul = sql.Ejecutar("Seleccionar_Paises", true, SqlServer.TipoRetorno.Tupla);
            List<Pais_EN> lPaises = new List<Pais_EN>();
            lPaises = Mapper.MapearEntidades<Pais_EN>(resul.ResultadoConectado);
            sql.ConexionFinalizar();
            return lPaises;
        }
    }


}
