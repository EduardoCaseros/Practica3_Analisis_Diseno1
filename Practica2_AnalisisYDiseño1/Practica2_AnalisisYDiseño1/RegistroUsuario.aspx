<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="Practica2_AnalisisYDiseño1.RegistroUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Login | TuSuerte</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link href="css/prettyPhoto.css" rel="stylesheet"/>
    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png"/>
</head>
<body>
     <header class="navbar navbar-inverse navbar-fixed-top wet-asphalt" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><img src="images/logoTuSuerte2.png" alt="logo"></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li ><a href="Principal.html">Home</a></li>
                    <li><a href="Quines_Somos.html">QUIENES SOMOS</a></li>
                    <li class="active"><a href="RegistroUsuario.aspx">REGISTRATE</a></li>
                    <li ><a href="Ingreso.aspx">LOGIN</a></li>

                </ul>
            </div>
        </div>
    </header><!--/header-->
    <section id="main-slider" class="no-margin">
        <div class="carousel slide wet-asphalt">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active" style="background-image: url(images/slider/Slider1.jpg)">

                </div><!--/.item-->
                <div class="item" style="background-image: url(images/slider/Slider2.jpg)">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="carousel-content center centered">
                                    <h2 class="boxed animation animated-item-1">¿TIENES SUERTE?</h2>
                                    <p class="boxed animation animated-item-2">Acierta a los marcadores del mundial y gana muchos premios</p>
                                    <br>
                                    <a class="btn btn-md animation animated-item-3" href="#">Learn More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
                <div class="item" style="background-image: url(images/slider/Slider3.jpg)">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="carousel-content centered">
                                    <h2 class="animation animated-item-1">TuSuerte.com</h2>
                                    <p class="animation animated-item-2">El sitio que te ofrece la mejor quiniela del mundial</p>
                                    <p class="animation animated-item-2">Apresúrate y registrate para empezar</p>

                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="icon-angle-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="icon-angle-right"></i>
        </a>
    </section><!--/#main-slider-->

    
    <section id="title" class="emerald">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1>BIENVENIDO</h1>
                    <p>REGISTRA TUS DATOS PARA CREAR UNA NUEVA CUENTA</p>
                    
                </div>
                
            </div>
        </div>
    </section><!--/#title-->    

    <section id="recent-works">
        <div class="container">
            <form id="form1" runat="server" class="center" role="form">
                 <fieldset class="registration-form">
               

                <div class="form-group">
                    <asp:Label runat="server" >NOMBRE COMPLETO</asp:Label>                                    
                </div>
                <div class="form-group">
                    <asp:TextBox type="text" id="nombre_completo" name="nombre_completo" placeholder="Nombre Completo" class="form-control" runat="server"></asp:TextBox>                                         
                    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                            ControlToValidate="nombre_completo"
                            ErrorMessage="Campo Obligatorio"
                            ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" >Nombre de Usuario</asp:Label>                                    
                </div>
                <div class="form-group">
                    <asp:TextBox type="text" id="usuario" name="usuario" placeholder="Usuario" class="form-control" runat="server"></asp:TextBox>                    
                    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                            ControlToValidate="usuario"
                            ErrorMessage="Campo Obligatorio"
                            ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>
                     <div class="form-group">
                    <asp:Label runat="server" >Correo Electrónico</asp:Label>                                    
                </div>
                <div class="form-group">
                    <asp:TextBox type="email" id="correo" name="correo" placeholder="Corre electrónico" class="form-control" runat="server"></asp:TextBox>                    
                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                            ControlToValidate="correo"
                            ErrorMessage="Campo Obligatorio"
                            ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" >Contraseña</asp:Label>                                    
                </div>

                <div class="form-group">
                    <asp:TextBox type="password" id="pass" name="pass" placeholder="Contraseña" class="form-control" runat="server"></asp:TextBox>                    
                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                            ControlToValidate="pass"
                            ErrorMessage="Campo Obligatorio"
                            ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>
                 <div class="form-group">
                       <asp:Label ID="Ms_error1" name="Ms_error1" style="color:red" Visible="false" runat="server" Text=""></asp:Label>
                   
                 </div>
          

                <div class="form-group">
                    <asp:Button ID="b_ingreasr" name="b_ingresar" type="Button" class="btn btn-success btn-md btn-block" runat="server" Text="INGRESAR" OnClick="b_ingreasr_Click" />
                </div>
            </fieldset>
    
            </form>
        </div>
    </section><!--/#recent-works-->




    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">Roberto Caseros Reynoso</a>. All Rights Reserved.
                </div>

            </div>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>

