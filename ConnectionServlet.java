/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.eni.servlet;

import fr.eni.bll.UtilisateurManager;
import fr.eni.bo.Utilisateur;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
@WebServlet(name = "ConnectionServlet", urlPatterns = {"/ConnectionServlet"})
public class ConnectionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       	
        RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/connection.jsp");
	disp.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        /*
        je récupère les infos de mes inputs, je vérifie si mon utilisateur existe en bdd avec 
        ma méthode getUtilisateur de UtilisateurManager,
        - si oui, j'enregistre mon utilisateur en session et le forward vers l'acceuil,
        - si non, je le forward vers la page connection via le get de ma servlet connection avec 
        un message d'erreur.
        */
        
        HttpSession session=request.getSession();
        RequestDispatcher disp = null;
        UtilisateurManager utilisateurManager= new UtilisateurManager();
        
        String identifiant=request.getParameter("identifiant");
        String password=request.getParameter("password");
        
        try {
            
            Utilisateur utilisateur=utilisateurManager.getUtilisateur(identifiant, password);
            session.setAttribute("utilisateur", utilisateur);
            disp=request.getRequestDispatcher("/WEB-INF/accueil.jsp");
            
        } catch (Exception e) {
            
            e.getMessage();
            e.printStackTrace();
            
            request.setAttribute("pbmConnection", "Le mot de passe ou l'identifiant n'existe pas.");
            disp=request.getRequestDispatcher("ConnectionServlet");
        }
        
	disp.forward(request, response);
    }


}
