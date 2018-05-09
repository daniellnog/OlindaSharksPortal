using LaefazWeb.Enumerators;
using LaefazWeb.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TDM.Jenkins.PosBuild
{
    class Program
    {
        private DbEntities db = new DbEntities();

        static void Main(string[] args)
        {


            // Controle_Ambiente controle_ambiente = db.Controle_Ambiente.SingleOrDefault(a => a.Descricao == "10.43.6.141" && a.Situacao == (int)EnumSituacaoAmbiente.EmUso);


            List<string> strCmdText = new List<string>();
            strCmdText.Add(@"tcshell -workspace");
            strCmdText.Add(@" ""C:\Tosca_Projects\Tosca_Workspaces\TRG PORTAL\TRG PORTAL.tws"" ");
            strCmdText.Add(" -executionmode");
            strCmdText.Add(@" ""C:\RemoteJenkins\tosca\portal\validar_home\script.tcs"" ");

            var comando = String.Join(String.Empty, strCmdText.ToArray());

            Process cmd = new Process();
            cmd.StartInfo.FileName = "cmd.exe";
            cmd.StartInfo.RedirectStandardInput = true;
            cmd.StartInfo.RedirectStandardOutput = true;
            cmd.StartInfo.CreateNoWindow = true;
            cmd.StartInfo.UseShellExecute = false;
            cmd.Start();

            //cmd.StandardInput.WriteLine(@"cd\");
            cmd.StandardInput.WriteLine(@"cd c:\RemoteJenkins");
            cmd.StandardInput.WriteLine(comando);
            cmd.StandardInput.Flush();
            cmd.StandardInput.Close();
            cmd.WaitForExit();
            Console.WriteLine(cmd.StandardOutput.ReadToEnd());
            Console.ReadLine();
        }
    }
}