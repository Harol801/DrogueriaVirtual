<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type='text/javascript'>
	function error() {
			alert("Contraseña o usuario incorrecto, intente de nuevo.");
	}
		</script>
</head>
<body>
<%
	String usuario = request.getParameter("usuario");
	String password = request.getParameter("password");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda","root","***");
	PreparedStatement ps = conexion.prepareStatement("SELECT * FROM usuarios WHERE usuario = ? and password = ?");
	ps.setString(1,usuario);
	ps.setString(2,password);
	ResultSet result = ps.executeQuery();
	int i = 0;
	while(result.next()){
		i++;
	}
	if(i == 1){
		response.sendRedirect("menu.html");
	}else{
		//response.sendRedirect("indexTienda.html");
	
		
	
		
	}
	
%>
<script type='text/javascript'>
			error();
			window.location.href = "indexTienda.html";
</script>

</body>
</html>