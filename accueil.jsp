<%-- 
    Document   : accueil
    Created on : 25 août 2021, 09:06:06
    Author     : user
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>

	<h2>Liste des enchères</h2>
	
	<form action="AccueilServlet" method="post">
	<h3>Filtres :</h3>
	contient : <input type="text" name="contient"><br>
		
	<!-- par défaut la catégorie est sur toutes, penser à modifier code en consequence 
         vérifier valeur dans servlet param reçu "toutes" par défaut -->
		
	catégorie : 
	<select name="categorie">
            <option value="toutes" selected="selected">Toutes</option>
	    <option value="info">Informatique</option>
	    <option value="meuble">Ameublement</option>
	    <option value="vetement">Vêtement</option>
	    <option value="sport">Sport&Loisirs</option>
	</select>
	
	<c:if test="${utilisateur!=null}">
		  <input type="radio" name="achatVente" value="achat" checked>Achats<br>
		  
		  	  <input type="checkbox" name="choixListeEnchere" value="1" checked> enchères ouvertes<br>
		  	  <input type="checkbox" name="choixListeEnchere" value="2"> mes enchères<br>
		  	  <input type="checkbox" name="choixListeEnchere" value="3"> mes enchères remportées<br>
		  	  
		  <input type="radio" name="achatVente" value="vente">Mes ventes<br>
		  
		  	  <input type="checkbox" name="choixListeVente" value="1" > mes ventes en cours<br>
		  	  <input type="checkbox" name="choixListeVente" value="2" checked> ventes non débutées<br>
		  	  <input type="checkbox" name="choixListeVente" value="3"> ventes terminées<br>
	</c:if>
	
	<input type="submit" value="Rechercher">
</form>

<!-- a voir si besoin test si list articles n'est pas null, ou si valeur null aucun affichage auto --> 

<c:forEach items="${lstArticles}" var="article">
    <p><c:out value="${article.nomArticle}" /> !</p>
</c:forEach>

</body>
</html>
