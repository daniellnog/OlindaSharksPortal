using System.Linq;
using System.Web.Mvc;
using TDMWeb.Lib;
using OlindaSharksWeb.Models;

namespace LaefazWeb.Controllers
{
    [UsuarioLogado]
    public class TeamController : Controller
    {

        private OlindaSharksDBEntities db = new OlindaSharksDBEntities();

        public ActionResult Index()
        {
            //PEGA O OBJETO COM O USUÁRIO QUE ESTÁ LOGADO
            SystemUser user = (SystemUser)Session["ObjUsuario"];
            return View(db.Team.ToList());
        }
    }
}
