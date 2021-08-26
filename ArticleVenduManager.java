/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.eni.bll;

import fr.eni.bo.ArticleVendu;
import fr.eni.dal.ArticleVenduDAO;
import fr.eni.dal.DAOFactory;
import java.util.List;

/**
 *
 * @author user
 */
public class ArticleVenduManager {
  
        
        private static ArticleVenduManager instance;
	private ArticleVenduDAO articleVenduDAO = DAOFactory.getArticleVenduDAO();
        
//////////////////constructeur////////////    
        
    public ArticleVenduManager() {
    }
              
//////////////////methodes instance////////////  
    
        public static ArticleVenduManager getInstance() {
	if(ArticleVenduManager.instance==null) {
		ArticleVenduManager.instance=new ArticleVenduManager();
	}

	return instance;
	}
        
//////////////////methodes//////////// 
        
        public List<ArticleVendu> getListArticle(){
            
            List<ArticleVendu>lstArticles=articleVenduDAO.selectAll();
            
            return lstArticles;
        }
}
