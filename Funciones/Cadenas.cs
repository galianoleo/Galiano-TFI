using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Microsoft.VisualBasic;

namespace Funciones
{
    public class Cadenas
    {

        //metodos:


        /// <summary>
        /// Recibe un texto, marca de inicio y fin y devuelve el texto entre marcas
        /// </summary>
        /// <param name="ptexto">asfla@@HOMERO@sdnbfldsf</param>
        /// <param name="pmarcaInicio">@@</param>
        /// <param name="pmarcaFin">@</param>
        /// <returns>HOMERO</returns>
        /// <remarks></remarks>
        public static string TextoEntreMarcas(string ptexto, string pmarcaInicio, string pmarcaFin)
        {

            string textoADevolver = TextoSinBasuraIzquierda(ptexto, pmarcaInicio);

            textoADevolver = TextoSinBasuraDerecha(textoADevolver, pmarcaFin);

            return textoADevolver;

        }


        public static string CadenaAleatoria(string cantidadCaracteres)
        {
            string cadenaResultado = "";
            char caracter;
            for (int i = 0; i <= Convert.ToInt32(cantidadCaracteres); i++)
            {
                caracter = Convert.ToChar(Matematicas.NumeroAleatorio(65, 90)); 
            }

            return cadenaResultado;
        }


        /// <summary>
        /// Reemplaza el texto entre las marcas indicadas
        /// </summary>
        /// <param name="ptexto">@Nombre/</param>
        /// <param name="pmarcaInicio">@</param>
        /// <param name="pmarcaFin">/</param>
        /// <param name="pTextoInsertar">Mariano</param>
        /// <returns>Mariano</returns>
        /// <remarks></remarks>
        public static string ReemplazarEntreMarcas(string ptexto, string pmarcaInicio, string pmarcaFin, string pTextoInsertar)
        {

            //lo reemplazable original
            string textoAReemplazar = pmarcaInicio + TextoEntreMarcas(ptexto, pmarcaInicio, pmarcaFin) + pmarcaFin;

            string textoModificado = Reemplazar(ptexto, textoAReemplazar, pTextoInsertar);

            return textoModificado;

        }


        /// <summary>
        /// Quita los caracteres que estan a la izquierda de la marca
        /// </summary>
        /// <param name="pTexto">homero.simpson@gmail.com</param>
        /// <param name="pMarca">@</param>
        /// <returns>gmail.com</returns>
        /// <remarks></remarks>
        public static string TextoSinBasuraIzquierda(string pTexto, string pMarca)
        {

            List<string> ListaSeparada =  Strings.Split(pTexto, pMarca).ToList();
            return ListaSeparada[ListaSeparada.Count() - 1];
            
        }



        /// <summary>
        /// Quita los caracteres que estan a la derecha de la marca
        /// </summary>
        /// <param name="pTexto">homero.simpson@gmail.com</param>
        /// <param name="pMarca">@</param>
        /// <returns>homero.simpson</returns>
        /// <remarks></remarks>
        public static string TextoSinBasuraDerecha(string pTexto, string pMarca)
        {

            List<string> ListaSeparada = Strings.Split(pTexto, pMarca).ToList();

            return ListaSeparada[0];

        }


        /// <summary>
        /// Recibe texto original, texto a buscar y texto a reemplazar
        /// </summary>
        /// <param name="ptextoOriginal">hola homero</param>
        /// <param name="ptextoBuscar">hola</param>
        /// <param name="ptextoReemplazar">chau</param>
        /// <returns>chau homero</returns>
        /// <remarks></remarks>
        public static string Reemplazar(string ptextoOriginal, string ptextoBuscar, string ptextoReemplazar)
        {

            string TextoModificado = Strings.Replace(ptextoOriginal, ptextoBuscar, ptextoReemplazar);

            return TextoModificado;

        }


        /// <summary>
        /// Recibe una lista y un caracter separador, pone lo que esta en la lista como string separando por el caracter recibido
        /// </summary>
        /// <param name="plista">hola/que/tal</param>
        /// <param name="pseparador">@</param>
        /// <returns>hola@que@tal</returns>
        /// <remarks></remarks>
        public static string UnirLista(List<string> plista, string pseparador)
        {

            string ListaUnida = null;

            ListaUnida = Strings.Join(plista.ToArray(), pseparador);

            return ListaUnida;

        }


        /// <summary>
        /// Recibe la consulta de SQL y devuelve los parametros de la misma
        /// </summary>
        /// <param name="pConsulta">Insert into Usuario VALUES (@NombreUsuario, @Clave)</param>
        /// <returns>@NombreUsuario, @Clave</returns>
        /// <remarks></remarks>
        public static List<string> ObtenerParametrosEnQuery(string pConsulta)
        {

            List<string> resultado = new List<string>();

            int inicio = Strings.InStr(pConsulta, "@");


            while (inicio > 0)
            {
                int[] arrayFinal = new int[5];
                arrayFinal[0] = Strings.InStr(inicio, pConsulta, " ");
                arrayFinal[1] = Strings.InStr(inicio, pConsulta, ",");
                arrayFinal[2] = Strings.InStr(inicio, pConsulta, ")");
                arrayFinal[3]= Strings.InStr(inicio, pConsulta, ";");
                arrayFinal[4] = Strings.InStr(inicio, pConsulta, Constants.vbNewLine);

                Array.Sort(arrayFinal);

                int valorMinimo = Int32.MinValue;
                if (arrayFinal[4] > 0)
                    valorMinimo = arrayFinal[4];
                if (arrayFinal[3] > 0)
                    valorMinimo = arrayFinal[3];
                if (arrayFinal[2] > 0)
                    valorMinimo = arrayFinal[2];
                if (arrayFinal[1] > 0)
                    valorMinimo = arrayFinal[1];
                if (arrayFinal[0] > 0)
                    valorMinimo = arrayFinal[0];
                if (arrayFinal[0] == 0 & arrayFinal[1] == 0 & arrayFinal[2] == 0 & arrayFinal[3] == 0 & arrayFinal[4] == 0)
                    valorMinimo = pConsulta.Length + 1;

                resultado.Add(Strings.Mid(pConsulta, inicio, valorMinimo - inicio));

                inicio = Strings.InStr(valorMinimo + 1, pConsulta, "@");

            }

            return resultado;

        }

        /// <summary>
        /// Devuelve el nombre del metodo que se esta ejecutando
        /// </summary>
        /// <param name="frame">contexto de ejecucion (stack de la ejecucion)</param>
        /// <returns>MiMetodoEjecutandose</returns>
        /// <remarks></remarks>
        public static string DevolverNombreMetodo(int frame)
        {

            System.Diagnostics.StackTrace st = new System.Diagnostics.StackTrace();
            //con esta clase le vas haciendo un trace a la pila de metodo en ejecucion

            string nombreMetodo = st.GetFrame(frame).GetMethod().Name;
            //el parametro frame que le pasas es el contexto de ejecucion, a medida que dentro de otro metodo vas llamando a otro metodo, depende el nombre de cual quieras saber es el "frame" que le pases.

            return nombreMetodo;

        }

        public static string ValidarRow(IDataReader row, string columna, string defecto)
        {
            if (row == null)
            { return defecto;}
            else
            { return row.GetString(row.GetOrdinal(columna)); }
        }


    }

}
