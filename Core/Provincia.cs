using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
public    class Provincia_BE
    {
    }

public class Provincia_EN
{
    public int IdProvincia { get; set; }
    public List<Ciudad_EN> lciudades { get; set; }
    public string Descripcion { get; set; }

}

public class Provincia_Mapper
{
}

}
