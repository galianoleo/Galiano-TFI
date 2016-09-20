using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public interface IMapper
    {
        T RealizarMapeoSinLista<T>(object pSourceDatos) where T : new();
    }
}
