using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Seguridad
{
    public class Sesion
    {
        private static Sesion UnicaInstancia;
        public string Mail { get; set; }

        public int Idioma { get; set; }
      

        private Sesion()
        {
        }
       
        public static Sesion GetInstance()
        {
            try
            {

                if (UnicaInstancia == null)
                {
                    UnicaInstancia = new Sesion();
                    return UnicaInstancia;


                }
                else
                {
                    return UnicaInstancia;

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}
