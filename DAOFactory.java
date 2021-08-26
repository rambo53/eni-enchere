/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.eni.dal;

import fr.eni.jdbc.ArticleVenduDAOJdbcImpl;
import fr.eni.jdbc.UtilisateurDAOJdbcImpl;

/*import fr.eni.dal.jdbc.ArticleVenduDAOJdbcImpl;
import fr.eni.dal.jdbc.CategorieDAOJdbcImpl;
import fr.eni.dal.jdbc.EnchereDAOJdbcImpl;
import fr.eni.encheres.dal.jdbc.RetraitDAOJdbcImpl;
import fr.eni.encheres.dal.jdbc.UtilisateurDAOJdbcImpl;*/

/**
 * @author kehleyr
 *
 */
public class DAOFactory {
    public static UtilisateurDAO getUtilisateurDAO() {
        return new UtilisateurDAOJdbcImpl();
    }
    /*public static CategorieDAO getCategorierDAO() {
        return new CategorieDAOJdbcImpl();
    }*/
    public static ArticleVenduDAO getArticleVenduDAO() {
        return new ArticleVenduDAOJdbcImpl();
    }
    /*public static EnchereDAO getEnchereDAO() {
        return new EnchereDAOJdbcImpl();
    }
    public static RetraitDAO getRetraitDAO() {
        return new RetraitDAOJdbcImpl();
    }*/
}
