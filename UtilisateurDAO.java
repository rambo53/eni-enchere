/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.eni.dal;

import java.util.List;

import fr.eni.bo.Utilisateur;

/**
 * @author kehleyr
 *
 */
public interface UtilisateurDAO {
    /*public void insertUtilisateur (Utilisateur u);
    public List<Utilisateur> selectAll();*/
    public Utilisateur getUtilisateurByMail(String mail, String password);
    public Utilisateur getUtilisateurByPseudo(String pseudo, String password);
}
