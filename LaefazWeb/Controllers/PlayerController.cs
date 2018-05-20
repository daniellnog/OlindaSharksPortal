using System;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using TDMWeb.Extensions;
using TDMWeb.Lib;
using OlindaSharksWeb.Models;

namespace LaefazWeb.Controllers
{
    [UsuarioLogado]
    public class PlayerController : Controller
    {

        private OlindaSharksDBEntities db = new OlindaSharksDBEntities();

        public ActionResult Index()
        {
            //PEGA O OBJETO COM O USUÁRIO QUE ESTÁ LOGADO
            SystemUser user = (SystemUser)Session["ObjUsuario"];
            ViewBag.listaTimes = db.Team.ToList();
            return View(db.Player.ToList());
        }

        public ActionResult Adicionar()
        {
            ViewBag.ListTeam = db.Team.ToList();
            return View();
        }

        public ActionResult SalvarEdicao(Player objeto)
        {
            try
            {
                Salvar(objeto, true);
                this.FlashSuccess("Jogador editado com sucesso.");
            }
            catch (Exception ex)
            {
                this.FlashError(ex.Message);
            }
            return RedirectToAction("Index");
        }

        public ActionResult Salvar(Player objeto, bool editar = false)
        {
            try
            {
                Player player;

                if (editar)
                {
                    db.Entry(objeto).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                }
                else
                {
                    player = new Player()
                    {
                        Name = Request.Form.Get("name"),
                        Address = Request.Form.Get("address"),
                        Cpf = Request.Form.Get("cpf"),
                        DateOfBorn = Request.Form.Get("DateOfBorn"),
                        Height = Request.Form.Get("height"),
                        Weight = Request.Form.Get("weight"),
                        Nickname = Request.Form.Get("nickname"),
                        ProfileFacebook = Request.Form.Get("profileFacebook"),
                        ProfileInstagram = Request.Form.Get("profileInstagram"),
                        Rg = Request.Form.Get("rg"),
                        Telephone = Request.Form.Get("telephone"),
                        IdTeamFK = Int32.Parse(Request.Form.Get("times"))
                    };

                    db.Player.Add(player);
                    db.SaveChanges();

                    this.FlashSuccess("Jogador adicionado com sucesso.");
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
            ViewBag.ListTeam = db.Team.ToList();
            return View(db.Player.FirstOrDefault(a => a.IdPlayer == id));
        }

        [HttpPost]
        public ActionResult Remover(string id)
        {
            var result = new JsonResult() { JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            int idJogador = Int32.Parse(id);
            try
            {
                Player player = db.Player.SingleOrDefault(a => a.IdPlayer == idJogador);

                db.Player.Remove(player);
                db.SaveChanges();

                result.Data = new { Result = "Jogador removido com sucesso.", Status = (int)WebExceptionStatus.Success };
            }
            catch (Exception ex)
            {
                result.Data = new { Result = ex.Message, Status = (int)WebExceptionStatus.UnknownError };
            }
            return result;
        }
    }
}
