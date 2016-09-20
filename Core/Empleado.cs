using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Data.SqlClient;
using DAL;

namespace Core
{
    public class Empleado_BE
    {
    }

    public class Empleado_EN
    {
        public Empleado_EN()
        {
            Empresa = new Empresa_EN();
            Usuario = new Usuario_EN();
        }
        public int DNI { get; set; }
        public Empresa_EN Empresa { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public Usuario_EN Usuario { get; set; }

    }

    public class Empleado_Mapper
    {
        
    }
}
