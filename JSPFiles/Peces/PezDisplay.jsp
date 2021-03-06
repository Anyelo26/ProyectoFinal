<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="model.*"%>
<%
	Pez pescadito = (Pez) request.getAttribute("Pez");
%>
<% String menu= (String)request.getAttribute("menu"); %>
<html>
<head>
<meta name ="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Peces(CRUD)</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link href="../css/animate.min.css" rel="stylesheet"> 
	<link href="../css/style.css" rel="stylesheet" />
</head>
<body>
<header id="header" >
        <nav class="navbar navbar-default navbar-static-top "  role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>				
                <div class="navbar-collapse collapse">							
					<div class="menu" >
						<ul class="nav nav-tabs " role="tablist">
							<li role="presentation"><a href="../index.jsp" class="active">Casa</a></li>
							<li role="presentation"><a href="/Role/Display">Roles</a></li>
							<li role="presentation"><a href="/User/Display">Usuarios</a></li>
							<li role ="presentation"><a href="/Resource/Display">Resource</a></li>
							<li role="presentation"><a href="/Access/Display">Accesos</a></li>
							<li role="presentation"><a href="/UserLogin">Login</a></li>
							<li role="presentation"><a href="/UserLogout">Logout</a></li>
							<li role="presentation"><a href="/User/Register">Registrarse</a></li>
							<li role="presentation"><a href="/Product/Display">Productos</a></li>
							<li role="presentation"><a href="/peces">Peces</a></li>
							<li role="presentation"><a href="/lab08_foro">Foro</a></li>
							<li role="presentation"><a href="/Recomendaciones">Recomendaciones</a></li>		
							<li role="presentation" style="margin-left:45%"><div class="navbar-brand">
								<a href="../index.jsp"><h1>OMEGA-AQP</h1></a>
							</div></li>
													
						</ul>
					</div>
				</div>		
            </div>
        </nav>		
    </header>


<div class="container">
<div class="row">
<div class="col md-5 col-md-offset-1 col xs-5 col-xs-offset-1" id="table">
	<span class="nav"><a href="/peces?action=PezLookup">Catalogo</a></span><br>
	<div class="form-group"><span class="title">Caracteristicas:</span></div>
	<table  class="table table-bordered" >
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Codigo:</td>
			<td bgcolor="#ffffff"><%= pescadito.getId() %></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Nombre:</td>
			<td bgcolor="#ffffff"><%= pescadito.getNombre() %></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Orden:</td>
			<td bgcolor="#ffffff"><%=pescadito.getOrden()%></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Familia:</td>
			<td bgcolor="#ffffff"><%=pescadito.getFamilia()%></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">G�nero:</td>
			<td bgcolor="#ffffff"><%=pescadito.getGenero()%></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Precio</td>
			<td bgcolor="#ffffff"><%=pescadito.getPrecio()%></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Stock:</td>
			<td bgcolor="#ffffff"><%=pescadito.getStock()%></td>
		</tr>
	</table>
	</div>
	</div>
	</div>
</body>
</html>