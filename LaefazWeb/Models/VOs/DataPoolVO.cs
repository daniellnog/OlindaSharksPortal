using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaefazWeb.Models.VOs
{
    public class DataPoolVO
    {
        public int Id { get; set; }
        public string DescricaoDemanda { get; set; }
        public string DescricaoSistema { get; set; }
        public string DescricaoDataPool { get; set; }
        public int? QtdSolicitada { get; set; }
        public int? QtdDisponivel { get; set; }
        public int? QtdReservada { get; set; }
        public int? QtdUtilizada { get; set; }
        public string Farol { get; set; }
        public int TotalCount { get; set; }
        public DataPoolVO() { }

        //public DataPoolVO(DataPool datapool)
        //{
        //    this.Id = datapool.Id;
        //    this.DescricaoDataPool = datapool.Descricao;
        //    this.DescricaoDemanda = datapool.AUT.Descricao;
        //    this.DescricaoSistema = datapool.TDM.Descricao != null ? datapool.TDM.Descricao : "";
        //}
    }
}


