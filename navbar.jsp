<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    pageEncoding="ISO-8859-1"%>

<nav>
	<a href="#">ENI	- Encheres</a>
	
	<c:if test=${utilisateur==null}>
		<ul>
			<li><a href="/connection">S'incrire - Se connecter</a></li>
		</ul>
	</c:if>
	
	<c:if test=${utilisateur!=null}>
		<ul>
			<li><a href="/accueil">Enchères</a></li>
			<li><a href="/nouvelleVente">Vendre un article</a></li>
			<li><a href="/monProfil">Mon profil</a></li>
			<li><a href="/accueil">Déconnexion</a></li>
		</ul>
	</c:if>

</nav>
