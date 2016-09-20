using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualBasic;

namespace Funciones
{
    public class Matematicas
    {


        private static Random rnd = new Random();
        //metodos:

        /// <summary>
        /// Este metodo devuelve un numero aleatorio en el rango desde - hasta
        /// </summary>
        /// <param name="pDesde">numero desde inclusive</param>
        /// <param name="pHasta">numero hasta inclusive</param>
        /// <returns></returns>
        /// <remarks></remarks>
        public static int NumeroAleatorio(int pDesde, int pHasta)
        {

            VBMath.Randomize();
            VBMath.Randomize();
            VBMath.Randomize();
            VBMath.Randomize();

            return rnd.Next(pDesde, pHasta + 1);

        }


        /// <summary>
        /// Obtiene el porcentaje que representa un valor sobre el total
        /// </summary>
        /// <param name="pValor">10</param>
        /// <param name="pTotal">100</param>
        /// <returns>10</returns>
        /// <remarks></remarks>
        public static double ObtenerPorcentaje(double pValor, double pTotal)
        {

            return (pValor * pTotal) / 100;

        }

    }
}
