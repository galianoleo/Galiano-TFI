using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualBasic;
using System.Data;

namespace Funciones
{
    public class Fechas
    {

        //metodos:

        /// <summary>
        /// Devuelve la fecha de hoy, depende el formato deseado
        /// </summary>
        /// <returns>mm/dd/aaaa</returns>
        /// <remarks></remarks>
        public static System.DateTime Hoy()
        {

            return System.DateTime.Today;

        }


        /// <summary>
        /// Devuelve la fecha y la hora, depende el formato deseado
        /// </summary>
        /// <returns>mm/dd/aaaa hh:mm:ss</returns>
        /// <remarks></remarks>
        public static System.DateTime Ahora()
        {

            return System.DateTime.UtcNow;

        }


        /// <summary>
        /// Devuelve el ultimo dia del mes, en formato fecha, recibiendo el mes
        /// </summary>
        /// <param name="pMes">5</param>
        /// <returns>31/05/2013</returns>
        /// <remarks></remarks>
        public static System.DateTime UltimoDelMes(int pMes)
        {

            DateTime HoyTemp = Convert.ToDateTime("01/" + pMes + "/" + Hoy().Year);


            HoyTemp = DateAndTime.DateAdd(DateInterval.Month, 1, HoyTemp);

            HoyTemp = DateAndTime.DateAdd(DateInterval.Day, -1, HoyTemp);

            return HoyTemp;

        }


    }
}
