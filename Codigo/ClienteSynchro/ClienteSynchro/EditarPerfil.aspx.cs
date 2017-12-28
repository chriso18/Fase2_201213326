using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteSynchro
{
    public partial class EditarPerfil : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServerJava.PenduloWSClient servidor = new ServerJava.PenduloWSClient();
            if (FileUpload1.PostedFile != null)
            {
                string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                //Guardar el Archivo en el Disco
                FileUpload1.SaveAs(Server.MapPath("Imagen/Perfil/" + FileName));
                ruta = "Imagen/Perfil/" + FileName;

            }
            if (servidor.ModificarUsuario(TextBox1.Text, TextBox2.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text , ruta, TextBox3.Text).Equals("Registro exitoso."))
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Se Registro Correctamente" + "');", true);
            }
        }
    }
}