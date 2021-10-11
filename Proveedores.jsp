<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	
	<link href = "estilo.css" rel = "stylesheet" type = "text/css"/>
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</script>
<title>Proveedores</title>
</head>
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
      <a class="nav-item nav-link" href="usuarios.html">Usuarios</a>
      <a class="nav-item nav-link" href="Clientes.jsp">Clientes</a>
      <a class="nav-item nav-link active" href="Proveedores.jsp">Proveedores</a>
      <a class="nav-item nav-link" href="Productos.jsp">Productos</a>
      <a class="nav-item nav-link" href="#">Ventas</a>
      <a class="nav-item nav-link" href="#">Reportes</a>
      
    </div>
  </div>
</nav>
<br>
<form class="justify-content-center">

  <div class="row px-4" >
    <div class="col-md-4 px-4">
      <label for="inputEmail4">NIT</label>
      <input name="NIT" class="form-control" id="NIT" placeholder="NIT">
    </div>
    <div class="col-md-4 px-4">
      <label for="inputPassword4">Telefono</label>
      <input name="telefono" class="form-control" id="telefono" placeholder="Telefono">
    </div>
    </div>
    <div class="row px-4">
    <div class="col-md-4 px-4">
      <label for="inputEmail4">Nombre Proveedor</label>
      <input name="nombreC" class="form-control" id="nombrep" placeholder="Nombre Proveedor">
    </div>
    <div class="col-md-4 px-4">
      <label for="inputPassword4">Ciudad</label>
      <input name="ciudad"  class="form-control" id="ciudad" placeholder="Ciudad">
    </div>
  </div>
  <div class="row px-4">
  <div class="col-md-8 px-4">
    <label for="inputAddress">Direccion</label>
    <input name="dir"  class="form-control" id="dir" placeholder="Direccion">
  </div>
  </div>
  <p>
  
  <div class = "container-fluid ps-5" > 
  
 
  <button type="submit"  class="btn btn-success" >Consultar</button>
  <button type="submit"  class="btn btn-success">Crear</button>
  <button type="submit" class="btn btn-success">Actualizar</button>
  <button type="submit" onclick="delet()"class="btn btn-success">Borrar</button>
  </div>
  
</form>


</body>
</html>