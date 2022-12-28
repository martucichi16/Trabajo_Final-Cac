<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="../css/styles_tickets.css">
		<style>
			#info_compra {
				margin: 100px;
				text-align: center;
			}
			
			h2 {
				color:purple;
			}
			
			h4 {
				font-style: italic;
			}
			
			#btnDelete, #btnUpdate, #btnConfirmar {
				color: white;
				border-style: solid;
				border-color: white;
				display: flex;
				align-items: center;
				justify-content: center;
				font-weight: bold;
			}
			
			#btnDelete {
				background-color: #FF7272;
			}
			
			#btnUpdate {
				background-color: #FFEF8B;
			}
			
			#btnConfirmar {
				background-color: #BBFF9B;
			}
			
			#alert_jsp {
			    color: #084298;
			    background-color: #cfe2ff;
			    border-color: #b6d4fe;
			    border-radius: 2%;
			    padding: 20px;
			    text-align: center;
			}
			
			#btnUpdate2 {
				background-color: #FFEF8B;
				text-align: center;
				font-size: small;
				height: 60px;
			}
			
			</style>
	</head>
	
	<body>
		<%
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String mail = request.getParameter("mail");
			String cantidad = request.getParameter("cantidad");
			String categoria = request.getParameter("categoria");
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			try {
				Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/compraticket", "root", "");
				Statement stm = cn.createStatement();
				
				stm.executeUpdate("INSERT INTO ticket(nombre,apellido,mail,cantidad,categoria) VALUES ('"+nombre+"','"+apellido+"','"+mail+"','"+cantidad+"','"+categoria+"')");
			} catch (Exception e) {
				out.print("Error al cargar los datos");
			}
		%>
		
		<jsp:include page="ticket.jsp"></jsp:include>
		
	</body>
</html>