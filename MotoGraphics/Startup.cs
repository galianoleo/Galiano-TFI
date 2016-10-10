using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(MG.Startup))]

namespace MG
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // Para obtener más información acerca de cómo configurar su aplicación, visite http://go.microsoft.com/fwlink/?LinkID=316888
            app.MapSignalR();
        }
    }
}
