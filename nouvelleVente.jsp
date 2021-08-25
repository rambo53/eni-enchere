<%-- 
    Document   : nouvelleVente
    Created on : 25 août 2021, 13:20:31
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>nouvelle vente</title>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>

<h2>Nouvelle vente</h2>

<form action="NouvelleVenteServlet" method="post">

	article : <input type="text" name="nomArticle" value="${article.nomArticle}"><br>
	description : <textarea name="description"
          			rows="5" cols="33">
				  </textarea>
				  <br>
	categorie : 
	<select name="categorie">
	    <option value="info">Informatique</option>
	    <option value="meuble">Ameublement</option>
	    <option value="vetement">Vêtement</option>
	    <option value="sport">Sport&Loisirs</option>
	</select>
	<br>
	photo de l'article :
	<input type="file"
       name="photoArticle"
       accept="image/png, image/jpeg">
       <br>
    mise à prix : <input type="number" name="miseAPrix" value="${article.miseAPrix}"><br>
    début de l'enchere : <input type="time" name="dateDebutEncheres" value="${article.dateDebutEncheres}">
    fin de l'enchere : <input type="time" name="dateFinEncheres" value="${article.dateFinEncheres}">
	
	retrait <br>
	Rue : <input type="text" name="rue" value="${utilisateur.rue}"><br>
	code postal : <input type="text" name="codePostal" value="${utilisateur.codePostal}"><br>
	ville : <input type="text" name="ville" value="${utilisateur.ville}"><br>
	
	<input type="submit" value="Enregistrer">
	<a href="/accueil">annuler</a>
	
	<!-- mène vers servlet spéciale pour delete qui forward ensuite vers l'accueil --> 
	
	<c:if test="${article.noArticle!=null}">
		<a href="EffaceVenteServlet">Annuler la vente</a>
	</c:if>
</form>

annuler revient sur tableau de bord via servlet TableauDeBordServlet

</body>
</html>
