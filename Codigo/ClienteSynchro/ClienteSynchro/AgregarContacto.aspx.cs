using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteSynchro
{
    public partial class AgregarContacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string usuario = (string)Session["usuario"];
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
         //   servidor.AgregarContacto();
        }
    }
}