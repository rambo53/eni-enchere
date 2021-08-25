/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

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
@WebServlet(name = "DeconnexionServlet", urlPatterns = {"/DeconnexionServlet"})
public class DeconnexionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {  
        
        HttpSession session = request.getSession();

        session.removeAttribute("utilisateur");
        
        //pas sûr du param de requestDispatcher
        
        RequestDispatcher disp = request.getRequestDispatcher("AccueilServlet");
	disp.forward(request, response);
    }

}
