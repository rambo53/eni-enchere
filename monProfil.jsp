<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>mon profil</title>
</head>
<body>

	pseudo : ${vendeur.pseudo}<br>
	nom: ${vendeur.nom}<br>
	prenom : ${vendeur.prenom}<br>
	email : ${vendeur.email}<br>
	tel : ${vendeur.telephone}<br>
	rue : ${vendeur.rue}<br>
	code postal : ${vendeur.codePostal}<br>
	ville : ${vendeur.ville}<br>

	<c:if test=${vendeur.noUtilisateur==utilisateur.noUtilisateur}>
		<a href="/monProfilModif">Modifier</a>
	</c:if>


</body>
</html>
