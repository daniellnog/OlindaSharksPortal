using LaefazWeb.Models;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using TDMWeb.Extensions;
using WebGrease.Css.Extensions;
using TDMWeb.Lib;
using OlindaSharksWeb.Models;

namespace LaefazWeb.Controllers
{
    [UsuarioLogado]
    public class ClienteController : Controller
    {

        private OlindaSharksDBEntities db = new OlindaSharksDBEntities();

        public ActionResult Index()
        {
            //return View(db.Cliente.ToList());
            return View();
        }

        public ActionResult Adicionar()
        {
            //ViewBag.ambientes = db.Cliente.ToList();
            return View();
        }

    //    [HttpPost]
    //    public ActionResult Remover(int id)
    //    {
    //        var result = new JsonResult() { JsonRequestBehavior = JsonRequestBehavior.AllowGet };

    //        try
    //        {
    //            Ambiente ambiente = db.Ambiente.SingleOrDefault(a => a.Id == id);

    //            db.Ambiente.Remove(ambiente);
    //            db.SaveChanges();

    //            result.Data = new { Result = "Ambiente removido com sucesso.", Status = (int)WebExceptionStatus.Success };
    //        }
    //        catch (Exception ex)
    //        {
    //            result.Data = new { Result = ex.Message, Status = (int)WebExceptionStatus.UnknownError };
    //        }
    //        return result;
    //    }
        

        
    //public ActionResult Editar(int id)
    //{

    //        ViewBag.ambientes = db.Cliente.ToList();
    //        return View(db.Ambiente.FirstOrDefault(a => a.Id == id));
    //}
    
        
    //    public ActionResult SalvarEdicao(Ambiente objeto)
    //    {
    //        try
    //        {
    //            Salvar(objeto, true);
    //            this.FlashSuccess("Ambiente editado com sucesso.");
    //        }
    //        catch (Exception ex)
    //        {
    //            this.FlashError(ex.Message);
    //        }
    //        return RedirectToAction("Index");
    //    }
        
        
    //    [HttpPost]
    //    public ActionResult Salvar(Ambiente objeto, bool editar = false)
    //    {
    //        try
    //        {
    //            if (!ModelState.IsValid)
    //            {
    //                var msg = string.Empty;
    //                ModelState.Values.SelectMany(v => v.Errors).ForEach(m => msg = string.Concat(m.ErrorMessage.ToString(), @"\n"));
    //                if (!msg.IsNullOrWhiteSpace())
    //                    this.FlashWarning(msg);

    //                return View("Adicionar", objeto);
    //            }

    //            Ambiente ambiente;

    //            if (editar)
    //            {
    //                objeto.UltimaAtualizacao = DateTime.Now;
    //                objeto.IdCliente = Int32.Parse(Request.Form.Get("listAmbientes"));
    //                objeto.Cliente.Id = Int32.Parse(Request.Form.Get("listAmbientes"));
    //                // anexar objeto ao contexto
    //                db.Ambiente.Attach(objeto);
    //                // desabilita a necessitada de atualização do campo DataCriacao
    //                db.Entry(objeto).Property(o => o.DataCriacao).IsModified = false;
    //                // informa que o obejto será modificado
    //                db.Entry(objeto).State = System.Data.Entity.EntityState.Modified;
    //                db.SaveChanges();
    //            }
    //            else
    //            {
    //                ambiente = new Ambiente()
    //                {
    //                    IdCliente = Int32.Parse(Request.Form.Get("listAmbientes")),
                        
    //                    IP = Request.Form.Get("ip"),
    //                    Descricao = Request.Form.Get("descricao"),
    //                    DataCriacao = DateTime.Now,
    //                    UltimaAtualizacao = DateTime.Now
             
    //                };

    //                db.Ambiente.Add(ambiente);
    //                db.SaveChanges();

    //                this.FlashSuccess("Ambiente adicionado com sucesso!.");
    //            }
    //        }
    //        catch (Exception ex)
    //        {
    //            if (ex.InnerException != null && ex.InnerException.InnerException != null && ex.InnerException.InnerException.Message.ToString().Contains("AK_Ambiente_Descricao"))
    //                this.FlashError("Já existe um Ambiente com essa descrição.");
    //            else
    //                this.FlashError(ex.Message);
    //        }

    //        return RedirectToAction("Index");
    //    }
    
    }
}