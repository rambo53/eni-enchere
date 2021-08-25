<%-- 
    Document   : connection
    Created on : 25 août 2021, 11:05:38
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>connection</title>
</head>
<body>

    <jsp:include page="navbar.jsp"></jsp:include>
    
	<form action="ConnectionServlet" method="post">
	
		identifiant : <input type="text" name="identifiant"><br>
		Mot de passe : <input type="password" name="password"><br>
		<input type="checkbox" name="seSouvenirDeMoi" value="true"> se souvenir de moi<br>
		<a href="#">Mot de passe oublié</a><br>
		<input type="submit" value="Connexion">

	</form>
	
	<a href="MonProfilModifServlet">Créer un compte</a>

</body>
</html>
