package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AccueilServlet
 */
@WebServlet(name = "AccueilServlet", urlPatterns = {"/accueil"})
public class AccueilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AccueilServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//je charge la liste d'article à afficher en fonction param, par defaut toutes encheres en cours
		
		  RequestDispatcher disp = request.getRequestDispatcher("/accueil.jsp");
		  ArticleVenduManager articleVenduManager = ArticleVenduManager.getInstance();
		  
		  List<ArticleVendu> lstArticles = new ArrayList<>();
		  lstArticles=articleVenduManager.getArticlesEnCours();
		  
		  request.setAttribute("lstArticles", lstArticles);
		  
		  disp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		 //je récupère les param de mon form de recherche d'article, je charge la list d'article et je réaffiche ma page
		
		  RequestDispatcher disp = request.getRequestDispatcher("/accueil.jsp");
		  
		  String contient=request.getParameter("contient");
		  String categorie=request.getParameter("categorie");
		  
		  ArticleVenduManager articleVenduManager = ArticleVenduManager.getInstance();
		  
		  List<ArticleVendu> lstArticles = new ArrayList<>();
		  
		  //penser surcharge de méthode pour getArticles!!!
		
		// voir pour list d'arraylist d'article, affichage avec boucles foreach imbriquées
		  
		  lstArticles=articleVenduManager.getArticles(contient, categorie);
		  
		  disp.forward(request, response);;
	}

}
