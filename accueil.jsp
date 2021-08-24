<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accueil</title>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>

	<h2>Liste des enchères</h2>

<jsp:include page="formulaireRechercheEnchere.jsp"></jsp:include>

<!-- a voir si besoin test si list articles n'est pas null, ou si valeur null aucun affichage auto --> 

<c:forEach items="${lstArticles}" var="article">
    <p><c:out value="${article.nomArticle}" /> !</p>
</c:forEach>

</body>
</html>
