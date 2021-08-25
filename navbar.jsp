<%-- 
    Document   : navbar
    Created on : 25 août 2021, 09:11:59
    Author     : user
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    pageEncoding="ISO-8859-1"%>

<nav>
	<a href="AccueilServlet">ENI	- Encheres</a>
	
	<c:if test="${utilisateur==null}">
		<ul>
			<li><a href="ConnectionServlet">S'incrire - Se connecter</a></li>
		</ul>
	</c:if>
	
	<c:if test="${utilisateur!=null}">
		<ul>
			<li><a href="AccueilServlet">Enchères</a></li>
			<li><a href="NouvelleVenteServlet">Vendre un article</a></li>
			<li><a href="MonProfilServlet">Mon profil</a></li>
			<li><a href="DeconnexionServlet">Déconnexion</a></li>
		</ul>
	</c:if>

</nav>
