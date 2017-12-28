using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteSynchro
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            ServerJava.PenduloWSClient servidor = new ServerJava.PenduloWSClient();
            if(servidor.VerificarUsuario(textusuario.Text,textpass.Text)==true)
            {
               string usu = servidor.ObtenerUsu2(textusuario.Text, textpass.Text);
               string pas = servidor.ObtenerPass2(textusuario.Text, textpass.Text);
               //cookies de inicio de sesion
               HttpCookie CooLogin = new HttpCookie("Login");
               Session["Login"] = true;

             //  if (Recordar.Checked)
             //  {
             //      CooLogin["Usuario"] = usu;
             //      CooLogin["Pass"] = pas;
             //      CooLogin.Expires = DateTime.Now.AddDays(1);
             //      Response.Cookies.Add(CooLogin);
             //  }
             //  else
             //  {
                   Session["usuario"] = usu;
                   Session["pass"] = pas;
                   Response.Redirect("Menu.aspx");
              // }
            }
            else{
                Response.Redirect("Inicio.aspx");
                }
        }
    }
}