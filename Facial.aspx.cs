using Newtonsoft.Json;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{

    public partial class Facial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            //var client = new RestClient("http://localhost:8090/api/Imagenes");
            var client = new RestClient(System.Web.Configuration.WebConfigurationManager.AppSettings["RutaAPI"].ToString());
            client.Timeout = -1;
            var request = new RestRequest(Method.POST);
            request.AddHeader("Content-Type", "application/json");
            request.AddParameter("application/json", "{\"Imagen1\":\""+Image1.ImageUrl.Split(',')[1]+"\",\"Imagen2\":\"" + Image2.ImageUrl.Split(',')[1] + "\",\"NombreImagen1\":\""+ NombreImagen1.Text + "\",NombreImagen2:\"" + NombreImagen2.Text + "\"}", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);
            Console.WriteLine(response.Content);
            var results = JsonConvert.DeserializeObject<dynamic>(response.Content);
            if (results.StatusCode !=0)
            {
                var statusCode = results.StatusCode;
                var Type = results.Type;
                var Message = results.Message;
                Resultado.Text = Type + " - " + Message;    
            }
            else
            {
                var score = results.Score;
                var calidad1 = results.Image1_Quality;
                var calidad2 = results.Image2_Quality;
                Resultado.Text = score;
                TextCalidad1.Text = calidad1;
                TextCalidad2.Text = calidad2;
            }
            //Se actualizan los text donde van los resultados
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            System.IO.Stream fs = FileUpload1.PostedFile.InputStream;
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            Image1.ImageUrl = "data:image/png;base64," + base64String;
            Image1.Visible = true;
            NombreImagen1.Text = FileUpload1.FileName;
        }

        protected void btnUpload2_Click(object sender, EventArgs e)
        {
            System.IO.Stream fs = FileUpload2.PostedFile.InputStream;
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            Image2.ImageUrl = "data:image/png;base64," + base64String;
            Image2.Visible = true;
            NombreImagen2.Text = FileUpload2.FileName;
        }

        
    }
}