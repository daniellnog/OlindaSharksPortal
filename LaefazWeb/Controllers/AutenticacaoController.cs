using System.Linq;
using System.Web.Mvc;
using LaefazWeb.Models;
using OlindaSharksWeb.Models;

namespace TDMWeb.Controllers
{
    public class AutenticacaoController : Controller
    {
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Index()
        {
            return View();
        }

        [ActionName("Index")]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult IndexPost()
        {
            string usuario = Request.Form.Get("usuario");
            string senha = Request.Form.Get("senha");

            OlindaSharksDBEntities db = new OlindaSharksDBEntities();

            SystemUser usuarioDB = db.SystemUser.Where(u => u.Login.Equals(usuario)).Where(u => u.Password.Equals(senha)).FirstOrDefault();
            if (usuarioDB != null)
            {
                Session["ObjUsuario"] = usuarioDB;
                return RedirectToAction("Index", "Payment");
            }

            ModelState.AddModelError("", "Credenciais inválidas");
            return View();
        }

        public ActionResult Logout()
        {
            Session.Abandon();

            return RedirectToAction("Index");
        }
    }
}
