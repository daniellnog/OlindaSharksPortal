﻿using OlindaSharksWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using TDMWeb.Extensions;

namespace OlindaSharksWeb.Controllers
{
    public class SystemUserController : Controller
    {
        private OlindaSharksDBEntities db = new OlindaSharksDBEntities();

        public ActionResult Index()
        {
            //PEGA O OBJETO COM O USUÁRIO QUE ESTÁ LOGADO
            SystemUser user = (SystemUser)Session["ObjUsuario"];
            return View(db.SystemUser.ToList());
        }

        public ActionResult Adicionar()
        {
            return View();
        }

        public ActionResult SalvarEdicao(SystemUser objeto)
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

        public ActionResult Salvar(SystemUser objeto, bool editar = false)
        {
            try
            {
                SystemUser usuario;

                if (editar)
                {
                    db.Entry(objeto).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                }
                else
                {
                    usuario = new SystemUser()
                    {
                        Name = objeto.Name,
                        Login = objeto.Login,
                        Password = objeto.Password,
                        DataInclusao = DateTime.Now,
                        DataAtualizacao = DateTime.Now,
                    };

                    db.SystemUser.Add(usuario);
                    db.SaveChanges();

                    this.FlashSuccess("Usuário adicionado com sucesso.");
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
            return View(db.SystemUser.FirstOrDefault(a => a.IdSystemUser == id));
        }

        public ActionResult Remover(string id)
        {
            var result = new JsonResult() { JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            int idTeam = Int32.Parse(id);
            try
            {
                SystemUser usuario = db.SystemUser.SingleOrDefault(a => a.IdSystemUser == idTeam);

                db.SystemUser.Remove(usuario);
                db.SaveChanges();

                result.Data = new { Result = "Usuário removido com sucesso.", Status = (int)WebExceptionStatus.Success };
            }
            catch (Exception ex)
            {
                result.Data = new { Result = ex.Message, Status = (int)WebExceptionStatus.UnknownError };
            }
            return result;
        }
    }
}
