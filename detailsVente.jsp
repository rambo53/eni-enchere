<%-- 
    Document   : detailsVente
    Created on : 25 août 2021, 13:31:40
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>détails vente</title>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

	<!-- voir variable entete dans jsp avec requete, conditions si articleVendu.utilisateur.noUtilisateur == utilisateur.noUtilisateur
	 alors affiche "vous avez remporté la vente" etc... -->

	<h2>${entete}</h2>

	 
	 ${article.nomArticle}<br>
	 Description : ${article.description}<br>
	 Categorie :${article.categorie.libelle}<br>
	 meilleur offre : ${article.prixVente}<br>
	 mise à prix : ${article.miseAPrix}<br>
	 fin de l'enchère : ${article.dateFinEncheres}<br>
	 retrait : ${article.retrait.rue} ${article.retrait.code_postal} ${article.retrait.ville}<br>
	 
	 vendeur : ${article.vendeur.pseudo}<br>
	 
	 <c:if test="${article.vendeur.pseudo != utilisateur.pseudo}">
	 	tel : ${article.vendeur.telephone}<br>
	 </c:if>
	 <!-- si enchere possible voir date fin enchère et si articleVendu.utilisateur.noUtilisateur != utilisateur.noUtilisateur -->
	 
	 <form method="post" action="/encherir">
	 	ma proposition <input type="number" max="${utilisateur.credit}"><br>
	 	<input type="submit" value="Enchérir">
	 </form>
	 
	 <!-- voir pour effacer de table articleVendu et enregistrement table ventes consultable par admin 
              voir 2ième conditions affichage date -->
	 
	 <c:if test="${article.vendeur.pseudo != utilisateur.pseudo && dateDuJour>=article.dateFinEncheres}">
	 	<a href="/deleteVenteUtilisateur">Retrait effectué</a>
	 </c:if>
	 
	 <!-- recuperer date du jour et la passer en param request sous le nom dateDuJour -->
	 
	 <c:if test="${article.vendeur.pseudo == utilisateur.pseudo && dateDuJour>=article.dateFinEncheres}">
	 	<a href="/accueil">Back</a>
	</c:if>
	
</body>
</html>
