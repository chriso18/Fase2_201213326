﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProyecto.aspx.cs" Inherits="ClienteSynchro.Proyectos" %>

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

              .centrar {
   height: 323px;
   width: 580px;
   margin-top: -100px;
   margin-left: -150px;
   left: 39%;
   top: 40%;
   position: absolute;
}
        .auto-style11 {
            width: 100%;
            height: 316px;
            border-color: #000000;
            background-color: #3399FF;
        }
        .auto-style12 {
                width: 244px;
            }
        .auto-style13 {
            width: 245px;
        }
        .auto-style14 {
                width: 244px;
                height: 41px;
            }
        .auto-style15 {
            width: 245px;
            height: 41px;
        }
        .auto-style16 {
                height: 41px;
                width: 362px;
            }
        .auto-style17 {
            height: 33px;
        }
        
        .auto-style2 {
            text-align: left;
        }
        .auto-style11 {
            width: 56%;
            height: 314px;
            border-color: #000000;
            background-color: #3399FF;
        }
        .auto-style12 {
            width: 158px;
        }
        .auto-style13 {
            width: 245px;
        }
        .auto-style17 {
            height: 33px;
        }
        .auto-style14 {
            width: 158px;
            height: 41px;
        }
        .auto-style15 {
            width: 245px;
            height: 41px;
        }
        .auto-style16 {
            height: 41px;
        }
            .auto-style20 {
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
                    &nbsp;&nbsp;&nbsp;
                    <table class="auto-style11" align="center">
                        <tr>
                            <td class="auto-style12">Nombre</td>
                            <td class="auto-style13">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style20" colspan="2" rowspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" />
&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style12">Estado</td>
                            <td class="auto-style13">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">Monto</td>
                            <td class="auto-style13">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">Visibilidad</td>
                            <td class="auto-style13">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" colspan="3">
                                <asp:FileUpload ID="FileUpload1" runat="server" Height="23px" Width="257px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            <td class="auto-style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14"></td>
                            <td class="auto-style15">
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                            </td>
                            <td class="auto-style16">
                                <asp:HyperLink ID="HyperLink1" runat="server" href="Menu.aspx">Regresar</asp:HyperLink>
                            </td>
                            <td class="auto-style16">
                                &nbsp;</td>
                        </tr>
                    </table>
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