/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.eni.bll;

import fr.eni.bo.Utilisateur;
import fr.eni.dal.DAOFactory;
import fr.eni.dal.UtilisateurDAO;

/**
 *
 * @author user
 */
public class UtilisateurManager {
    
            
        private static UtilisateurManager instance;
	private UtilisateurDAO utilisateurDAO = DAOFactory.getUtilisateurDAO();
        
//////////////////constructeur////////////    
        
    public UtilisateurManager() {
    }
              
//////////////////methodes instance////////////  
    
        public static UtilisateurManager getInstance() {
	if(UtilisateurManager.instance==null) {
		UtilisateurManager.instance=new UtilisateurManager();
	}

	return instance;
	}

//////////////////methodes////////////
        
        /*
        Ma méthode ici me permet de récupérer un compte utilisateur grâce aux 2 param, identifiant et password,
         l'identifiant pouvant être le pseudo ou le mail, je test si l'identifiant contient @,
        - si oui methode getUtilisateurByMail, qui ira vérifier dans la colonne mail de ma table
        - si non methode getUtilisateurByPseudo, qui ira vérifier dans la colonne pseudo de ma table
        Puis me retourne mon utilisateur s'il existe.
        */
        
        public Utilisateur getUtilisateur(String identifiant, String password){
           Utilisateur utilisateur=null;
           
           if(identifiant.contains("@")){
               utilisateur=utilisateurDAO.getUtilisateurByMail(identifiant,password);
           }else{
               utilisateur=utilisateurDAO.getUtilisateurByPseudo(identifiant,password);
           }
            
           return utilisateur;
        }
}
