using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteSynchro
{
    public partial class AgregarGrupo : System.Web.UI.Page
    {
        String ruta = "";
        String usuario = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = (string)Session["usuario"];
            string password = (string)Session["pass"];
            ServerJava.PenduloWSClient servidor = new ServerJava.PenduloWSClient();
            if (!IsPostBack)
            {
                if (String.IsNullOrEmpty(usuario)) { Response.Redirect("Inicio.aspx"); }
                Image1.ImageUrl = servidor.ObtenerImagen(usuario, password);
            }
        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            ServerJava.PenduloWSClient servidor = new ServerJava.PenduloWSClient();
            if (FileUpload1.PostedFile != null)
            {
                string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                //Guardar el Archivo en el Disco
                FileUpload1.SaveAs(Server.MapPath("Imagen/Perfil/" + FileName));
                ruta = "Imagen/Perfil/" + FileName;
                Image2.ImageUrl = ruta;

            }
            servidor.AgregarGrupo(TextNombre.Text,TextWeb.Text,ruta,usuario);

        }
    }
}