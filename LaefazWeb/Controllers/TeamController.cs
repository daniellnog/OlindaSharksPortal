using System.Linq;
using System.Web.Mvc;
using TDMWeb.Lib;
using OlindaSharksWeb.Models;
using System;
using TDMWeb.Extensions;
using System.Net;

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

        public ActionResult Adicionar()
        {
            return View();
        }

        public ActionResult SalvarEdicao(Team objeto)
        {
            try
            {
                Salvar(objeto, true);
                this.FlashSuccess("Time editado com sucesso.");
            }
            catch (Exception ex)
            {
                this.FlashError(ex.Message);
            }
            return RedirectToAction("Index");
        }

        public ActionResult Salvar(Team objeto, bool editar = false)
        {
            try
            {
                Team team;

                if (editar)
                {
                    db.Entry(objeto).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                }
                else
                {
                    team = new Team()
                    {
                        Description = Request.Form.Get("description")
                    };

                    db.Team.Add(team);
                    db.SaveChanges();

                    this.FlashSuccess("Time adicionado com sucesso.");
                }
            }
            catch (Exception ex)
            {
                //if (ex.InnerException != null && ex.InnerException.InnerException != null && ex.InnerException.InnerException.Message.ToString().Contains("AK_TDM_Descricao"))
                //    this.FlashError("Já existe uma TDM com essa descrição.");
                //else
                //    this.FlashError(ex.Message);
            }

            return RedirectToAction("Index");
        }

        public ActionResult Editar(int id)
        {
            return View(db.Team.FirstOrDefault(a => a.IdTeam == id));
        }

        public ActionResult Remover(string id)
        {
            var result = new JsonResult() { JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            int idTeam = Int32.Parse(id);
            try
            {
                Team team = db.Team.SingleOrDefault(a => a.IdTeam == idTeam);

                db.Team.Remove(team);
                db.SaveChanges();

                result.Data = new { Result = "Time removido com sucesso.", Status = (int)WebExceptionStatus.Success };
            }
            catch (Exception ex)
            {
                result.Data = new { Result = ex.Message, Status = (int)WebExceptionStatus.UnknownError };
            }
            return result;
        }
    }
}
