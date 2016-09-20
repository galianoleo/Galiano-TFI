using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

namespace Funciones
{
    public class Convertidores
    {

        //metodos:


        /// <summary>
        /// Recibe un texto y devuelve su valor de verdad (booleano)
        /// </summary>
        /// <param name="ptexto">verdadero</param>
        /// <returns>true</returns>
        /// <remarks></remarks>
        public static bool ObjetoABooleano(string ptexto)
        {


            if (Strings.LCase(ptexto) == "verdadero")
            {
                return true;
            }
            else
            {
                if (Strings.LCase(ptexto) == "v")
                {
                    return true;
                }
                else
                {
                    if (Strings.LCase(ptexto) == "true")
                    {
                        return true;
                    }
                    else
                    {
                        if (Strings.LCase(ptexto) == "si")
                        {
                            return true;
                        }
                        else
                        {
                            if (Strings.LCase(ptexto) == "yes")
                            {
                                return true;
                            }
                        }
                    }
                }
            }

            return false;

        }



        /// <summary>
        /// Recibe un numero y la cantidad total de caracteres, debe completar con ceros a y devolver la cadena nuevamente
        /// </summary>
        /// <param name="pnumero">25</param>
        /// <param name="pcantidadCaracteres">8</param>
        /// <returns>00000025</returns>
        /// <remarks></remarks>
        public static string CerosALaIzquierda(string pnumero, int pcantidadCaracteres)
        {


            while (Strings.Len(pnumero) < pcantidadCaracteres)
            {
                pnumero = "0" + pnumero;

            }

            return pnumero;

        }



    }
}
