using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteSynchro
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string usuario = (string)Session["usuario"];
            string password = (string)Session["pass"];
            if (!IsPostBack)
            {
                if (String.IsNullOrEmpty(usuario)) { Response.Redirect("Inicio.aspx"); }
                ServerJava.PenduloWSClient servidor = new ServerJava.PenduloWSClient();
                Image1.ImageUrl=servidor.ObtenerImagen(usuario,password);
            }
     
        }

        protected void Salir_Click(object sender, EventArgs e)
        {
            this.Session.Clear();
            Response.Redirect("Inicio.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AgregarTarea.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AgregarProyecto.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AgregarGrupo.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AgregarConocimiento.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AgregarHabilidad.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AgregarContacto.aspx");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AgregarPeticion.aspx");
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AgregarSolicitud.aspx");
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("EditarPerfil.aspx");
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton21_Click(object sender, ImageClickEventArgs e)
        {

        }


    }
}