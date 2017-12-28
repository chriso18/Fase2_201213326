<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="ClienteSynchro.Menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<!--
---- Clean html template by http://WpFreeware.com
---- This is the main file (index.html).
---- You are allowed to change anything you like. Find out more Awesome Templates @ wpfreeware.com
---- Read License-readme.txt file to learn more.
-->	


	<head>
		<title>Welcome to my site</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!--Oswald Font -->
		<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/tooltipster.css" />
		<!-- home slider-->
		<link href="css/pgwslider.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link href="style.css" rel="stylesheet" media="screen">	
		<link href="responsive.css" rel="stylesheet" media="screen">		
	    <style type="text/css">

        .auto-style2 {
            text-align: left;
        }
    </style>
	</head>

	<body>
	
		<form id="form1" runat="server">
	
		<section id="header_area">
			<div class="wrapper header">
				<div class="clearfix header_top">
					<div class="clearfix logo floatleft">
						<a href=""><h1><span>Phantom</span>Soft</h1></a>
					</div>
					
				</div>
				
				</div>
			</div>
		</section>
		
		<section id="content_area">
			<div class="clearfix wrapper main_content_area">
			
        <div class="text-center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Width="130px" />
            <br />
                </div>
                <div class="auto-style2">
         &nbsp; Agregar:
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tarea&nbsp;&nbsp;&nbsp;&nbsp; Proyecto&nbsp;&nbsp;&nbsp;&nbsp; Grupo&nbsp;&nbsp;&nbsp;&nbsp; Conocimiento&nbsp;&nbsp;&nbsp;&nbsp; Habilidad&nbsp;&nbsp;&nbsp;&nbsp; Contacto&nbsp;&nbsp;&nbsp;&nbsp; Peticion&nbsp;&nbsp;&nbsp;&nbsp; Solicitud<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" ImageUrl="~/Imagen/ingresar.png" OnClick="ImageButton1_Click" Width="41px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Imagen/ingresar.png" OnClick="ImageButton2_Click" Width="41px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Imagen/ingresar.png" OnClick="ImageButton3_Click" Width="41px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Imagen/ingresar.png" OnClick="ImageButton4_Click" Width="41px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Imagen/ingresar.png" OnClick="ImageButton5_Click" Width="41px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Imagen/ingresar.png" OnClick="ImageButton6_Click" Width="41px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Imagen/ingresar.png" OnClick="ImageButton7_Click" Width="41px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Imagen/ingresar.png" OnClick="ImageButton8_Click" Width="41px" />
                    <br />
&nbsp;Editar:&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tarea&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Proyecto&nbsp;&nbsp;&nbsp;&nbsp; Grupo&nbsp;&nbsp;&nbsp;&nbsp; Conocimiento&nbsp;&nbsp;&nbsp;&nbsp; Habilidad&nbsp;&nbsp;&nbsp;&nbsp; Perfil&nbsp;&nbsp;&nbsp;&nbsp; Contacto<br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Imagen/editar.png" Width="41px" OnClick="ImageButton9_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Imagen/editar.png" OnClick="ImageButton10_Click" Width="41px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Imagen/editar.png" Width="41px" OnClick="ImageButton11_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Imagen/editar.png" Width="41px" OnClick="ImageButton12_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/Imagen/editar.png" Width="41px" OnClick="ImageButton13_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/Imagen/editar.png" Width="41px" OnClick="ImageButton14_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/Imagen/editar.png" Width="41px" OnClick="ImageButton15_Click" />
                    <br />
&nbsp;Mostrar:&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tarea&nbsp;&nbsp;&nbsp;&nbsp; Proyecto&nbsp;&nbsp;&nbsp;&nbsp; Grupo&nbsp;&nbsp;&nbsp;&nbsp; Peticion&nbsp;&nbsp;&nbsp;&nbsp; Solicitud&nbsp;&nbsp;&nbsp;&nbsp; Invitacion
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/Imagen/mostrar.png" Width="41px" OnClick="ImageButton16_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/Imagen/mostrar.png" Width="41px" OnClick="ImageButton17_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="~/Imagen/mostrar.png" Width="41px" OnClick="ImageButton18_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton19" runat="server" ImageUrl="~/Imagen/mostrar.png" Width="41px" OnClick="ImageButton19_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton20" runat="server" ImageUrl="~/Imagen/mostrar.png" Width="41px" OnClick="ImageButton20_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton21" runat="server" ImageUrl="~/Imagen/mostrar.png" Width="41px" OnClick="ImageButton21_Click" />
                    <br />
                    <br />
                    <asp:Button ID="Salir" runat="server" OnClick="Salir_Click" Text="Salir" />
                    <br />
                    <br />
                    <br />
                    <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
         </div>

				<div class="clearfix sidebar_container floatright">
				
					
					<div class="clearfix sidebar">
						
						
					    <br />
                        <br />
                        <br />
						
						
					</div>
				</div>
			</div>
		</section>
		
			<section id="footer_top_area">
			<div class="clearfix wrapper footer_top">
				<div class="clearfix footer_top_container">
					<div class="clearfix single_footer_top floatleft">
					
						
					</div>
					<div class="clearfix single_footer_top floatleft">
						
						
					</div>
					<div class="clearfix single_footer_top floatleft">
						
						<br>
		                <br>
		                <br>
		                <br>
		                 <br>
					</div>
				</div>
			</div>
		</section>
		

		<section id="footer_bottom_area">
			<div class="clearfix wrapper footer_bottom">
				<div class="clearfix copyright floatleft">
					<p> Copyright &copy; All rights reserved by <span>Wpfreeware.com</span></p>
				</div>
				<div class="clearfix social floatright">
					<ul>
						<li><a class="tooltip" title="Facebook" href=""><i class="fa fa-facebook-square"></i></a></li>
						<li><a class="tooltip" title="Twitter" href=""><i class="fa fa-twitter-square"></i></a></li>
						<li><a class="tooltip" title="Google+" href=""><i class="fa fa-google-plus-square"></i></a></li>
						<li><a class="tooltip" title="LinkedIn" href=""><i class="fa fa-linkedin-square"></i></a></li>
						<li><a class="tooltip" title="tumblr" href=""><i class="fa fa-tumblr-square"></i></a></li>
						<li><a class="tooltip" title="Pinterest" href=""><i class="fa fa-pinterest-square"></i></a></li>
						<li><a class="tooltip" title="RSS Feed" href=""><i class="fa fa-rss-square"></i></a></li>
						<li><a class="tooltip" title="Sitemap" href=""><i class="fa fa-sitemap"></i> </a></li>
					</ul>
				</div>
			</div>
		</section>
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.0.min.js"></script>	
		<script type="text/javascript" src="js/jquery.tooltipster.min.js"></script>		
		<script type="text/javascript">
		    $(document).ready(function () {
		        $('.tooltip').tooltipster();
		    });
		</script>
		<script type="text/javascript" src="js/selectnav.min.js"></script>
		<script type="text/javascript">
		    selectnav('nav', {
		        label: '-Navigation-',
		        nested: true,
		        indent: '-'
		    });
		</script>		
		<script src="js/pgwslider.js"></script>
		<script type="text/javascript">
		    $(document).ready(function () {
		        $('.pgwSlider').pgwSlider({

		            intervalDuration: 5000

		        });
		    });
		</script>
		
<!--

This Template is designed by WpFreeware.com Team, You are allowed to change anything you like.
Find out More Awesome template at http://www.WpFreeware.com.

-->		

	    </form>

	</body>
</html>