<%@page import="Clases.SociosDAO"  %>
<%@page import="Clases.Socios"%>
<%@page import="java.util.List"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de Socios</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet"> 
<link href="css/style.css" rel="stylesheet" type="text/css"> 
</head>
<body class="bodys">
<br>
<br>
<br>
<h1  class="titulol">Listado de Socios</h1>

<br>
<br>
<br>

<div  class="container">
		<div class="row"  >
				
				
				<table class="table table-striped table-dark" >
				<thead>
					<th>Id</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>DNI</th>
					<th>Mail</th>
					<th>Estado</th>
					<th class="text-center">Modificar</th>
					<th class="text-center">Eliminar</th>				
				</thead>
				
				
				<%
				List<Socios> resultado=null;
				SociosDAO socio=new SociosDAO();
				resultado=socio.listarSocios();
				
				
				
				for(int i=0;i<resultado.size();i++)
				{
				String ruta="SociosController?accion=modificar&id="+resultado.get(i).getId_socios();	
				String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getId_socios();
				%>			
				<tr>
				<td><%=resultado.get(i).getId_socios()%></td>				
				<td><%=resultado.get(i).getNombre() %></td>				
				<td><%=resultado.get(i).getApellido() %></td>
				<td><%=resultado.get(i).getDni()%></td>
				<td><%=resultado.get(i).getMail() %></td>
				<td><%=resultado.get(i).getEstado()%></td>
				<td class="text-center"><a href=<%=ruta%>> <i class="fa-solid fa-pen-to-square"></i></a></td>
				<td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-trash"></i></a></td>
				</tr>
				
				<%
				}
				%>
				
				
				</table>
		
		<p  style=padding:0px align= "right" >		
		<a class="btn btn-primary col-4 " href="SociosController?accion=nuevo" >Agregar Socio</a>
		</p>
		
		
		
		</div>
</div>





</body>
</html>