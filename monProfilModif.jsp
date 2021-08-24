<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mon profil</title>
</head>
<body>
	<h1>ENI-Enchères</h1>
	
	<h2>Mon Profil</h2>
	
	<form method="post" action="/modifProfil">
		pseudo : <input type="text">
		nom : <input type="text">
		prenom : <input type="text">
		email : <input type="text">
		telephone : <input type="text">
		rue : <input type="text">
		code postal : <input type="text">
		ville : <input type="text">
		mot de passe : <input type="text">
		
		<c:if test=${utilisateur!=null}>
			nouveau mot de passe : <input type="text">
			
			Credit dispo : ${Utilisateur.credit}
		</c:if>
		
		confirmation : <input type="text">
		
		<c:if test=${utilisateur==null}>
			<input type="submit" value="Créer">
			<a href="/acceuil"> Annuler </a>
		</c:if>
		
		<c:if test=${utilisateur!=null}>
			<input type="submit" value="Enregistrer">
			
<!-- me passe la valeur true a variable efface en get --> 
			
			<form action="/acceuil" method="get">
			    <input type="hidden" name="efface"  value="true" />
			    <input type="submit" value="Supprimer mon compte">
			</form>
		</c:if>
	</form>
</body>
</html>
