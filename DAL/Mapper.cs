using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    /// <summary>
    /// Provee el servicio de mapeo desde la base de datos hacia objetos de cualquier clase, mediante el uso de Generics y Reflection.
    /// </summary>
    public static class Mapper
    {

        /// <summary>
        /// Mapea y devuelve un objeto de cualquier clase.
        /// </summary>
        /// <typeparam name="T">Tipo de la entidad a mapear</typeparam>
        /// <param name="resultado">DataReader que contiene el resultado de una consulta a base de datos, con un único registro en particular.</param>
        /// <param name="entidad">Instancia de la clase que se desea mapear.</param>
        /// <returns></returns>
        public static T MapearEntidad<T>(IDataReader resultado, T entidad)
        {
            var tabla = new DataTable();
            tabla.Load(resultado);
            if (tabla.Rows.Count > 0)
            {
                var registro = tabla.Rows[0];

                SettearValoresDeEntidad(entidad, registro);

                return entidad;
            }
            else
            {
                return entidad;
            }
            
        }

        /// <summary>
        /// Sobrecarga del metodo homónimo para uso interno en la clase Mapper, se encarga de mapear y devolver un objeto de cualquier clase al metodo MapearEntidades.
        /// </summary>
        /// <typeparam name="T">Tipo de la entidad a mapear.</typeparam>
        /// <param name="row">Fila correspondiente al registro de la BD que se desea mapear.</param>
        /// <param name="entidad">Instancia de la clase que se desea mapear.</param>
        /// <returns></returns>
        private static T MapearEntidad<T>(DataRow row, T entidad)
        {
            SettearValoresDeEntidad(entidad, row);

            return entidad;
        }

        /// <summary>
        /// Mapea y devuelve una lista de objetos de cualquier clase.
        /// </summary>
        /// <typeparam name="T">Tipo de las entidades a mapear.</typeparam>
        /// <param name="resultado">DataReader que contiene el resultado de una consulta a base de datos, puede contener varios registros.</param>
        /// <returns></returns>
        public static List<T> MapearEntidades<T>(IDataReader resultado) where T : new()
        {
            var tabla = new DataTable();
            tabla.Load(resultado);

            var listaEntidades = new List<T>();

            foreach (DataRow row in tabla.Rows)
            {
                var entidad = new T();
                entidad = MapearEntidad(row, entidad);
                listaEntidades.Add(entidad);
            }

            return listaEntidades;
        }

        /// <summary>
        /// Asigna el valor de cada columna del registro de la tabla a cada propiedad de la entidad (mapeo propiamente dicho).
        /// </summary>
        /// <typeparam name="T">Tipo de la entidad a mapear.</typeparam>
        /// <param name="entidad">Entidad a la cual se le van a setear los valores de sus propiedades.</param>
        /// <param name="row">Registro de la base de datos que contiene los valores a asignar a la entidad.</param>
        private static void SettearValoresDeEntidad<T>(T entidad, DataRow row)
        {
            var propiedades = entidad.GetType().GetProperties();

            foreach (var property in propiedades)
            {
                var nombreProperty = property.Name;
                //property.SetValue(entidad, row[nombreProperty]);
                if (row.Table.Columns[nombreProperty] == null)
                {
                    property.SetValue(entidad, null);
                }
                else
                {
                    property.SetValue(entidad, row[nombreProperty]);
                }
            }
        }

       
    }
}
