<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarPerfil.aspx.cs" Inherits="ClienteSynchro.EditarPerfil" %>

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
	</head>

	<body>
	
		<section id="header_area">
			<div class="wrapper header">
				<div class="clearfix header_top">
					<div class="clearfix logo floatleft">
						<a href=""><h1><span>Phantom</span>Soft</h1></a>
					</div>
					
				</div>
				
				</div>

		</section>
		
		<section id="content_area">
			<div class="clearfix wrapper main_content_area">
			
				<div class="clearfix main_content floatleft">
				
					
					<div class="clearfix content">
						
						<div class="Registrarse">
						
							<h1>Registrarse</h1>
							
							<form id="form1" runat="server">
								<p>&nbsp; Nombre</p>
                                <p>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </p>
                                <p>&nbsp; Apellido</p>
								<p>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </p>
                                <p>&nbsp; Correo</p>
								<p>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </p>
                                <p>&nbsp; Usuario</p>
								<p>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </p>
                                <p>&nbsp; Password</p>
								<p>
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                                </p>
                                <p>&nbsp; Nacimiento</p>
								<p>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    Banco</p>
                                <p>
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </p>
                                <p>&nbsp;</p>
                                <p style="height: 89px; width: 692px">
                                    &nbsp;
                                    <asp:Image ID="Image1" runat="server" Height="82px" Width="87px" />
                                </p>
                                <p style="height: 38px; width: 692px">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </p>
                                <p style="height: 89px; width: 692px">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" />
                                </p>
                                <p style="height: 89px; width: 692px">
                                <asp:HyperLink ID="HyperLink1" runat="server" href="Menu.aspx">Regresar</asp:HyperLink>
                                </p>
                            </form>
							
						</div>
						
					</div>
					
					
				</div>
			</div>
		</section>
		
			<section id="footer_top_area">
			<div class="clearfix wrapper footer_top">
			</div>
		</section>
		

		<section id="footer_bottom_area">
			<div class="clearfix wrapper footer_bottom">
				<div class="clearfix copyright floatleft">
					<p> <span> Copyright &copy; All rights reserved by </span></p>
				</div>
				<div class="clearfix social floatright">
					<ul>
						<li><a class="tooltip" title="Facebook" href="www.facebook.com"><i class="fa fa-facebook-square"></i></a></li>
						<li><a class="tooltip" title="Twitter" href="www.twitter.com"><i class="fa fa-twitter-square"></i></a></li>
						<li><a class="tooltip" title="Google+" href="www.google.com"><i class="fa fa-google-plus-square"></i></a></li>
						<li><a class="tooltip" title="LinkedIn" href="www.linkedin.com"><i class="fa fa-linkedin-square"></i></a></li>
						<li><a class="tooltip" title="tumblr" href="www.tumbir.com"><i class="fa fa-tumblr-square"></i></a></li>
						<li><a class="tooltip" title="Pinterest" href="www.pinterest.com"><i class="fa fa-pinterest-square"></i></a></li>
						<li><a class="tooltip" title="RSS Feed" href="www.facebook.com"><i class="fa fa-rss-square"></i></a></li>
						<li><a class="tooltip" title="Sitemap" href="www.google.com"><i class="fa fa-sitemap"></i> </a></li>
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

	</body>
</html>
