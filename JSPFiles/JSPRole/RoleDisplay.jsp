<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Role" %>
<%@ page import="java.util.List" %>
<% List<Role> roles= (List<Role>)request.getAttribute("roles"); %>
<% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Role display</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OMEGA-AQP</title>
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
							<li role="presentation"><a href="../index.jsp"class="active">Casa</a></li>
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
		<table class="table table-bordered">
		<tr class="line"><td>Nombre</td><td>Fecha de Creación</td><td>ID</td><td>Status</td></tr>
		<%for(int i=0;i<roles.size();i++){
			Role rol= roles.get(i);
			int ind=i%2;
			%>
				<tr class="line<%=ind%>">
					<td><%=rol.getNombre()%></td>
					<td><%=rol.getCreado()%></td>
					<td><%=rol.getId()%></td>
					<td><%=rol.isStatus()%></td>
					<td><a href="/Role/Read?idRol=<%=rol.getId()%>">View</a></td>
					<td><a href="/Role/Create?mode=update&idRol=<%=rol.getId()%>">Update</a></td>
					<td><a href="/Role/Delete?idRol=<%=rol.getId()%>">Delete</a></td>
				</tr>
			<% 
		}
		%>
		</table>
		
		<br>
		<a href="/Role/Create?mode=create">Crear Nuevo Rol</a>
	</div>
</body>
</html>