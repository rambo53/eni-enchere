/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.eni.dal;

import java.util.List;

import fr.eni.bo.ArticleVendu;

/**
 * @author kehleyr
 *
 */
public interface ArticleVenduDAO {
   // public void insertArticle (ArticleVendu aV);
    public List<ArticleVendu> selectAll();
}
