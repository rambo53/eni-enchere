/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.eni.servlet;

import fr.eni.bll.ArticleVenduManager;
import fr.eni.bo.ArticleVendu;
import java.io.IOException;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user ma servlet accueil qui me renvoie ma page d'acceuil avec les listes d'articles souhaité par
 * l'utilisateur, et qui lui permet d'accéder à ses param persos si il est connecté, ou d'enchèrir, consulter ses ventes...
 */
@WebServlet(name = "AccueilServlet", urlPatterns = {"/AccueilServlet"})
public class AccueilServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //je charge la liste d'article à afficher en fonction param, par defaut toutes encheres en cours
        
		  RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/accueil.jsp");
		  ArticleVenduManager articleVenduManager = ArticleVenduManager.getInstance();
                  
		  //par defaut toutes encheres en cours
                  
		  List<ArticleVendu> lstArticles = new ArrayList<>();
		  lstArticles=articleVenduManager.getListArticle();
		  
		  request.setAttribute("lstArticles", lstArticles);
		  
		  disp.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        //je récupère les param de mon form de recherche d'article, je charge la list d'article et je réaffiche ma page
        
		  RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/accueil.jsp");
		  
		  String contient=request.getParameter("contient");
		  String categorie=request.getParameter("categorie");
		  
		 // ArticleVenduManager articleVenduManager = ArticleVenduManager.getInstance();
		  
		  //List<ArticleVendu> lstArticles = new ArrayList<>();
		  
		  //penser surcharge de méthode pour getArticles!!!
		  
		  //lstArticles=articleVenduManager.getListArticle(contient, categorie);
		  
		  disp.forward(request, response);
    }

}
