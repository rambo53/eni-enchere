<%-- 
    Document   : monProfilModif
    Created on : 25 août 2021, 13:07:25
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Création modification profil</title>
</head>
<body>
	<h1>ENI-Enchères</h1>
	
	<h2>Mon Profil</h2>
	
        <form method="post" action="MonProfilModifServlet"><br>
            
            pseudo : <input type="text" name="pseudo" pattern="[A-Za-z][0-9]" required="required"><br>
            nom : <input type="text" name="nom" required="required"><br>
            prenom : <input type="text" name="prenom" required="required"><br>
            email : <input type="email" name="mail" required="required"><br>
            telephone : <input type="tel" name="telephone"><br>
            rue : <input type="text" name="rue" required="required"><br>
            code postal : <input type="text" name="codePostal" required="required"><br>
            ville : <input type="text" name="ville" required="required"><br>
            mot de passe : <input type="password" name="motDePasse" required="required"><br>
		
		<c:if test="${utilisateur!=null}">
			nouveau mot de passe : <input type="password" required="required"><br>
			
			Credit dispo : ${Utilisateur.credit}<br>
		</c:if>
		
            confirmation : <input type="password" name="confirmPassword" required="required"><br>
		
		<c:if test="${utilisateur==null}">
			<input type="submit" value="Créer"><br>
			<a href="AccueilServlet"> Annuler </a><br>
		</c:if>
		
		<c:if test="${utilisateur!=null}">
			<input type="submit" value="Enregistrer">
                        
                        <a href="EffaceProfilServlet">Supprimer mon compte</a>
			
                <!-- me passe la valeur true a variable efface en get 
			
			<form action="/acceuil" method="get">
			    <input type="hidden" name="efface"  value="true" />
			    <input type="submit" value="Supprimer mon compte">
			</form>
                --> 
		</c:if>
	</form>
</body>
</html>
