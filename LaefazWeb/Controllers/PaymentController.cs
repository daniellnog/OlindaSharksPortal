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
    public class PaymentController : Controller
    {
        private OlindaSharksDBEntities db = new OlindaSharksDBEntities();

        public ActionResult Index()
        {
            //PEGA O OBJETO COM O USUÁRIO QUE ESTÁ LOGADO
            SystemUser user = (SystemUser)Session["ObjUsuario"];
            ViewBag.listaJogador = db.Player.ToList();
            return View(db.Payment.ToList());
        }

        public ActionResult Adicionar()
        {
            return View();
        }

        public ActionResult SalvarEdicao(Payment objeto)
        {
            try
            {
                Salvar(objeto, true);
                this.FlashSuccess("Pagamento editado com sucesso.");
            }
            catch (Exception ex)
            {
                this.FlashError(ex.Message);
            }
            return RedirectToAction("Index");
        }

        public ActionResult Salvar(Payment objeto, bool editar = false)
        {
            try
            {
                Payment pagamento;

                if (editar)
                {
                    db.Entry(objeto).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                }
                else
                {
                    pagamento = new Payment()
                    {
                        
                    };

                    db.Payment.Add(pagamento);
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
            return View(db.Payment.FirstOrDefault(a => a.IdPayment == id));
        }

        [HttpPost]
        public ActionResult Remover(string id)
        {
            var result = new JsonResult() { JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            int idPagamento = Int32.Parse(id);
            try
            {
                Payment pagamento = db.Payment.SingleOrDefault(a => a.IdPayment == idPagamento);

                db.Payment.Remove(pagamento);
                db.SaveChanges();

                result.Data = new { Result = "Pagamento removido com sucesso.", Status = (int)WebExceptionStatus.Success };
            }
            catch (Exception ex)
            {
                result.Data = new { Result = ex.Message, Status = (int)WebExceptionStatus.UnknownError };
            }
            return result;
        }
    }
}
