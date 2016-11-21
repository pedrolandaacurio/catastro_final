using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(catastro_final.Startup))]
namespace catastro_final
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
