<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<form action="" method="post">
	<h3>Filtres :</h3>
	contient : <input type="text" name="contient"><br>
	catégorie : 
	<select name="categorie">
	    <option value="info">Informatique</option>
	    <option value="meuble">Ameublement</option>
	    <option value="vetement">Vêtement</option>
	    <option value="sport">Sport&Loisirs</option>
	</select>
	
	<c:if test=${utilisateur!=null}>
		  <input type="radio" name="achatVente" value="achat" checked>Achats<br>
		  
		  	  <input type="checkbox" name="choixListeEnchere" value="enchereOuverte" checked> enchères ouvertes<br>
		  	  <input type="checkbox" name="choixListeEnchere" value="mesEnchere"> mes enchères<br>
		  	  <input type="checkbox" name="choixListeEnchere" value="enchereRemporte"> mes enchères remportées<br>
		  	  
		  <input type="radio" name="achatVente" value="vente">Mes ventes<br>
		  
		  	  <input type="checkbox" name="choixListeVente" value="mesVenteOuverte" > mes ventes en cours<br>
		  	  <input type="checkbox" name="choixListeVente" value="ventePasCommence" checked> ventes non débutées<br>
		  	  <input type="checkbox" name="choixListeVente" value="venteTermine"> ventes terminées<br>
	</c:if>
	
	<input type="submit" value="Rechercher">
</form>
