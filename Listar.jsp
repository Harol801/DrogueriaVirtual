<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href = "css/bootstrap.min.css" rel = "stylesheet" type = "text/css"/>
	<link href = "estilo.css" rel = "stylesheet" type = "text/css"/>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Usuarios</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	var usuarios = $.ajax({
		type:"GET",
		url: "http://localhost:8080/listarUsuarios",
		success: function(data){
			$.each(data, function(i,item){
				lista = document.getElementById("myTable");
				var tr = document.createElement("tr");
				var columna1 = document.createElement("td");
				columna1.innerHTML = item.cedula_usuario;
				var col2 = document.createElement("td");
				col2.innerHTML = item.email_usuario;
				var col3 = document.createElement("td");
				col3.innerHTML = item.nombre_usuario;
				var col4 = document.createElement("td");
				col4.innerHTML = item.password;
				var col5 = document.createElement("td");
				col5.innerHTML = item.usuario;				
				
				lista.appendChild(tr);
				tr.appendChild(columna1);
				tr.appendChild(col2);
				tr.appendChild(col3);
				tr.appendChild(col4);
				tr.appendChild(col5);
			});
		}
	})
</script>
</head>
<body>
<body align=center>
	<nav class="navbar navbar-custom py-0">
  		<a class="navbar-brand" href="indexTienda.html">
    		<img src="https://raw.githubusercontent.com/camrodriguezram/prueba/main/small.PNG" width="30" height="30" class="d-inline-block align-top" alt="">
    		Droguería
  		</a>
	</nav>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="usuarios.html">Usuarios</a>
      <a class="nav-item nav-link" href="Clientes.jsp">Clientes</a>
      <a class="nav-item nav-link" href="Proveedores.jsp">Proveedores</a>
      <a class="nav-item nav-link" href="Productos.jsp">Productos</a>
      <a class="nav-item nav-link" href="#">Ventas</a>
      <a class="nav-item nav-link" href="#">Reportes</a>
      
    </div>
  </div>
</nav>
<h1>Usuarios</h1>
<table border = "1">
	<thead>
		<tr>
			<th>Cedula</th>
			<th>Correo</th>
			<th>Nombre</th>
			<th>Contraseña</th>
			<th>Usuario</th>
		</tr>		
	</thead>
	<tbody id ="myTable">
	
	</tbody>
</table>
</body>
</html>