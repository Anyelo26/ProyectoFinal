<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="model.Account"%>
<%Account recurso= (Account)request.getAttribute("usuario");%>
<% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>User view</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link href="../css/animate.min.css" rel="stylesheet"> 
	<link href="../css/style.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
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
	<a href="/User/Display" class="atras">Back</a>
	<table class="table table-bordered">
		<tr><td>Correo</td><td><%=recurso.getCorreo() %></td></tr>
		<tr><td>Status</td><td><%=recurso.getStatus() %></td></tr>
		<tr><td>Ultima Actualización</td><td><%=recurso.getUltimaActualizacion() %></td></tr>
		<tr><td>id</td><td><%=recurso.getId() %></td></tr>
		<tr><td>Id del Rol</td><td><%=recurso.getIdRole() %></td></tr>
		<tr><td>Ciudad</td><td><%=recurso.getCity() %></td></tr>
		<tr><td>Teléfono</td><td><%=recurso.getPhone() %></td></tr>
	</table>
	</div>
</body>
</html>