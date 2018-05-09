using LaefazWeb.Models;
using LaefazWeb.Models.VOs;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using TDMWeb.Extensions;
using WebGrease.Css.Extensions;
using TDMWeb.Lib;
using System.Web.Services;
using OlindaSharksWeb.Models;

namespace LaefazWeb.Controllers
{
    [UsuarioLogado]
    public class DataPoolController : Controller
    {

        private OlindaSharksDBEntities db = new OlindaSharksDBEntities();

    //    public ActionResult Index()
    //    {
    //        //PEGA O OBJETO COM O USUÁRIO QUE ESTÁ LOGADO
    //        Usuario user = (Usuario)Session["ObjUsuario"];

    //        List<TDM_Usuario> listTDMByUser = new List<TDM_Usuario>();
    //        listTDMByUser.AddRange(db.TDM_Usuario.Where(x => x.IdUsuario == user.Id).ToList());

    //        //CRIADA NOVA LISTA DO OBJETO TDM
    //        List<TDM> listaTDM = new List<TDM>();

    //        foreach (TDM_Usuario tdmUsuario in listTDMByUser)
    //        {
    //            listaTDM.AddRange(db.TDM.Where(x => x.Id == tdmUsuario.IdTDM).ToList());

    //        }

    //        //ORDENA A LISTA PELO ATRIBUTO TDMPUBLICO
    //        //listaTDM.Sort((o1, o2) => -1* o1.TdmPublico.CompareTo(o2.TdmPublico));
           
    //        ViewBag.ListaTDM = listaTDM.OrderBy(s => s.Descricao).OrderByDescending(s => s.TdmPublico);
    //        getMinhasDemandas();
    //        return View(db.DataPool.ToList());
    //    }

    //    public JsonResult CarregarDataPool()
    //    {
    //        List<DataPoolVO> DataPoolVOs = new List<DataPoolVO>();

    //        // get Start (paging start index) and length (page size for paging)
    //        string draw = Request.Form.GetValues("draw").FirstOrDefault();
    //        string start = Request.Form.GetValues("start").FirstOrDefault();
    //        string length = Request.Form.GetValues("length").FirstOrDefault();
    //        //Get Sort columns value
    //        string sortColumn = Request.Form.GetValues("order[0][column]").FirstOrDefault();
    //        string sortColumnDir = Request.Form.GetValues("order[0][dir]").FirstOrDefault();
    //        string searchValue = Request.Form.GetValues("search[value]").FirstOrDefault();
    //        string idTDM = Request.Form.Get("idTDM");

    //        int pageSize = length != null ? Convert.ToInt32(length) : 0;
    //        int skip = start != null ? Convert.ToInt32(start) : 0;
    //        int TotalRows = 0;

    //        if (!String.IsNullOrEmpty(idTDM))
    //        {
    //            SqlParameter[] param =
    //            {
    //                new SqlParameter("@DisplayLength", length),
    //                new SqlParameter("@DisplayStart", start),
    //                new SqlParameter("@SortCol", sortColumn),
    //                new SqlParameter("@SortDir", sortColumnDir),
    //                new SqlParameter("@SEARCH", DBNull.Value),
    //                new SqlParameter("@ListarTodos", idTDM.Equals(0) ? "1" : "0"),
    //                new SqlParameter("@IdTDM", idTDM.Equals(0) ? null : idTDM)
    //            };

    //            if (searchValue != "")
    //                param[4].Value = searchValue;

    //            DataPoolVOs = db.Database.SqlQuery<DataPoolVO>(
    //                    "EXEC PR_LISTAR_DATAPOOL @DisplayLength, @DisplayStart, @SortCol, @SortDir, @SEARCH, @ListarTodos, @IdTDM ", param).ToList();

    //            if (DataPoolVOs.Any())
    //                TotalRows = DataPoolVOs.FirstOrDefault().TotalCount;

    //        }
    //        return Json(new { draw = draw, recordsFiltered = TotalRows, recordsTotal = TotalRows, data = DataPoolVOs }, JsonRequestBehavior.AllowGet);
    //    }

    //    public ActionResult Adicionar()
    //    {
    //        ViewBag.ListaTDM = db.TDM.ToList();
    //        ViewBag.ListaDemanda = db.Demanda.ToList();
    //        ViewBag.ListaAUT = db.AUT.ToList();
    //        return View();
    //    }

    //    [HttpPost]
    //    public ActionResult Remover(int id)
    //    {
    //        var result = new JsonResult() { JsonRequestBehavior = JsonRequestBehavior.AllowGet };

    //        try
    //        {
    //            TDM tdm = db.TDM.SingleOrDefault(a => a.Id == id);

    //            db.TDM.Remove(tdm);
    //            db.SaveChanges();

    //            result.Data = new { Result = "TDM removida com sucesso.", Status = (int)WebExceptionStatus.Success };
    //        }
    //        catch (Exception ex)
    //        {
    //            result.Data = new { Result = ex.Message, Status = (int)WebExceptionStatus.UnknownError };
    //        }
    //        return result;
    //    }

    //    public ActionResult Editar(int id)
    //    {
    //        return View(db.DataPool.FirstOrDefault(a => a.Id == id));
    //    }

    //    public ActionResult SalvarEdicao(TDM objeto)
    //    {
    //        try
    //        {
    //            Salvar(objeto, true);
    //            this.FlashSuccess("TDM editada com sucesso.");
    //        }
    //        catch (Exception ex)
    //        {
    //            this.FlashError(ex.Message);
    //        }
    //        return RedirectToAction("Index");
    //    }

    //    [HttpPost]
    //    public ActionResult Salvar(TDM objeto, bool editar = false)
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

    //            TDM tdm;

    //            if (editar)
    //            {
    //                db.Entry(objeto).State = System.Data.Entity.EntityState.Modified;
    //                db.SaveChanges();
    //            }
    //            else
    //            {
    //                tdm = new TDM()
    //                {
    //                    Descricao = Request.Form.Get("tdm_descricao")
    //                };

    //                db.TDM.Add(tdm);
    //                db.SaveChanges();

    //                this.FlashSuccess("TDM adicionada.");
    //            }
    //        }
    //        catch (Exception ex)
    //        {
    //            if (ex.InnerException != null && ex.InnerException.InnerException != null && ex.InnerException.InnerException.Message.ToString().Contains("AK_TDM_Descricao"))
    //                this.FlashError("Já existe uma TDM com essa descrição.");
    //            else
    //                this.FlashError(ex.Message);
    //        }

    //        return RedirectToAction("Index");
    //    }

    //    private void getMinhasDemandas()
    //    {
            
    //        Usuario usuarioLogado = (Usuario)Session["ObjUsuario"];           
    //        List<Demanda> minhasDemandas = new List<Demanda>();
    //        List<DataPool> listDatapool = new List<DataPool>();
    //        List<TDM_Usuario> listTDMByUser = new List<TDM_Usuario>();
    //        listTDMByUser.AddRange(db.TDM_Usuario.Where(x => x.IdUsuario == usuarioLogado.Id).ToList());
                       
    //        foreach (TDM_Usuario tdmUsuario in listTDMByUser)
    //        {
    //            listDatapool.AddRange(db.DataPool.Where(y => y.IdTDM == tdmUsuario.IdTDM).ToList());

    //            foreach(DataPool dataPool in listDatapool)
    //            {
    //                if (!minhasDemandas.Contains(dataPool.Demanda))
    //                {
    //                    minhasDemandas.Add(dataPool.Demanda);
    //                }
    //            }

    //            listDatapool = new List<DataPool>();

    //        }

    //        minhasDemandas.OrderBy(o => o.Descricao);
    //        //atribui a lista de demandas a session 'minhasDemandas'
    //        Session["minhasDemandas"] = minhasDemandas;
    //    }


    //    public JsonResult CarregaDemanda(string id)
    //    {

    //        int idDemanda = int.Parse(id);

    //        List<DataPool> dataPools = new List<DataPool>();
    //        dataPools.AddRange(db.DataPool.Where(x => x.IdDemanda == idDemanda).ToList());
    //        int? idDataPool = dataPools.First().Id;
    //       return (Json(new { id = idDataPool}, JsonRequestBehavior.AllowGet));

    //    }
    }
}
