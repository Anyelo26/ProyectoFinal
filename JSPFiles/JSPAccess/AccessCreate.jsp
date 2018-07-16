<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="model.Role" %>
<%@ page import ="model.Resource" %>
<%@ page import ="java.util.List" %>
<%List<Role> roles= (List<Role>)request.getAttribute("roles");
  List<Resource> recursos= (List<Resource>)request.getAttribute("recursos");
%>
<% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name ="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Access Create</title>
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
    <div class="container" >
    <h2 class="titulo">Añadir Acceso</h2>
	<a href="/Access/Display" class="atras">Volver</a>
	
	<form  action="/AccessCreatePersistent" method="get" class="formulario">
		<div class="form-group"><input type="hidden" name="mode" value="create">
				<h4>Rol</h4><br>
				<select name="rol">
					<%for(int i =0;i<roles.size();i++){	
						%>
						<p> <option><%=roles.get(i).getNombre()%></option></p>
						<%
					  }
					 %>
				</select>
				</div>
				<h4>Recurso</h4><br>
				<select name="recurso">
					<%for(int i =0;i<recursos.size();i++){	
						%>
						<p><option><%=recursos.get(i).getUrl()%></option></p>
						<%
					  }
					 %>
				</select>
				<br><br>
				<input  class="btn btn-primary" type="submit" value="Guardar">
	</form>
	</div>
</body>
</html>