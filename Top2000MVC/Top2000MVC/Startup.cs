using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Top2000MVC.Startup))]
namespace Top2000MVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}