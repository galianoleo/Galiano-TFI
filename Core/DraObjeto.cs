using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Reflection;
namespace Core
{
    public class DraObjeto
    {
        /// <summary>
        /// Se realiza un mapeo dinamico
        /// </summary>
        /// <typeparam name="T">tipo generico</typeparam>
        /// <param name="pSourceDatos">que es lo que se va a mapear</param>
        /// <returns></returns>
        /// <remarks></remarks>
        public static List<T> RealizarMapeo<T>(object pSourceDatos) where T : new()
        {

            List<T> ListaResultado = new List<T>();
            while (((IDataReader)pSourceDatos).Read())
            {
                T UnaInstancia = new T();

                foreach (PropertyInfo InformacionProperty in UnaInstancia.GetType().GetProperties())
                {
                    if (InformacionProperty.CanWrite)
                    {
                        try
                        {
                            IDataReader dr;
                            dr = (IDataReader)pSourceDatos;
                            InformacionProperty.SetValue(UnaInstancia, dr[InformacionProperty.Name]);
                        }
                        catch (IndexOutOfRangeException ex)
                        {
                            //No hago nada
                        }
                    }

                }
                ListaResultado.Add(UnaInstancia);

            }


            ((IDataReader)pSourceDatos).Close();

            return ListaResultado;

        }

        /// <summary>
        /// Pasa objetos a boolean
        /// </summary>
        /// <param name="TextoATestear">que es lo que se pasa</param>
        /// <returns></returns>
        /// <remarks></remarks>
        //public static bool ObjetoABoolean(string TextoATestear)
        //{
        //    List<string> Afirmativos = new List<string>();
        //    Afirmativos.Add("True");
        //    Afirmativos.Add("SI");
        //    Afirmativos.Add("1");
        //    Afirmativos.Add("2");
        //    bool Resultado = false;
        //    if (TextoATestear == ("0"))
        //    {
        //        Resultado = false;
        //    }
        //    else
        //    {
        //        foreach (void i_loopVariable in Afirmativos)
        //        {
        //            var i = i_loopVariable;
        //            Resultado = TextoATestear; // ERROR: Unknown binary operator Like
        //            if (Resultado == true)
        //            {
        //                break; // TODO: might not be correct. Was : Exit For
        //            }
        //        }
        //    }
        //    return Resultado;
        //}

        public static T RealizarMapeoSinLista<T>(object pSourceDatos) where T : new()
        {

            //Dim ListaResultado As New T


            ((IDataReader)pSourceDatos).Read();

            T UnaInstancia = new T();

            foreach (PropertyInfo InformacionProperty in UnaInstancia.GetType().GetProperties())
            {
                if (InformacionProperty.CanWrite)
                {
                    try
                    {
                        IDataReader dr;
                        dr = (IDataReader)pSourceDatos;
                        InformacionProperty.SetValue(UnaInstancia, dr[InformacionProperty.Name]);

                    }
                    catch (IndexOutOfRangeException ex)
                    {
                        //No hago nada
                        
                    }
                }
            }

            ((IDataReader)pSourceDatos).Close();

            return UnaInstancia;

        }

        public static List<T> DataReaderMapToList<T>(IDataReader dr)
        {
            List<T> list = new List<T>();
            T obj = default(T);

            while (dr.Read())
            {
                obj = Activator.CreateInstance<T>();
                foreach (PropertyInfo prop in obj.GetType().GetProperties())
                {
                    if (!object.Equals(dr[prop.Name], DBNull.Value))
                    {
                        prop.SetValue(obj, dr[prop.Name], null);
                    }
                }
                list.Add(obj);
            }
            return list;
        }



    }
}
