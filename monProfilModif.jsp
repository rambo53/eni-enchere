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
	
        <form method="post" action="/modifProfil"><br>
		pseudo : <input type="text"><br>
		nom : <input type="text"><br>
		prenom : <input type="text"><br>
		email : <input type="text"><br>
		telephone : <input type="text"><br>
		rue : <input type="text"><br>
		code postal : <input type="text"><br>
		ville : <input type="text"><br>
		mot de passe : <input type="text"><br>
		
		<c:if test="${utilisateur!=null}">
			nouveau mot de passe : <input type="text"><br>
			
			Credit dispo : ${Utilisateur.credit}<br>
		</c:if>
		
		confirmation : <input type="text"><br>
		
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
