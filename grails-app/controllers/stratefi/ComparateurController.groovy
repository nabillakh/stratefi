package stratefi

import stratefi.comparateur.*
import org.compass.core.engine.SearchEngineQueryParseException

class ComparateurController {

    def searchableService
    def comparateurService
    
    def index() {
        
        def userInstance = comparateurService.initUser() 
        
        Formulaire formulaireInstance
        if(userInstance)  {
            formulaireInstance = comparateurService.initFormulaire(userInstance)       
        }
        
        formulaireInstance = comparateurService.rechercheFormulaire(formulaireInstance)
        
        def acteurs = comparateurService.rechercheActeurs(formulaireInstance)
        
        
        [formulaireInstance : formulaireInstance, userInstance : userInstance, acteurs : acteurs]        
    }
    
    
    def listeFinancement() {
        
        def acteurInstanceList = Acteur.list()
        def secteurs = Secteur.list()
        println("secteurs " + secteurs)
        def typeProduit = TypeProduit.list()
        def typeProjet = TypeProjet.list()
        [acteurInstanceList : acteurInstanceList, secteurs : secteurs , typeProduit : typeProduit, typeProjet : typeProjet]
    }
    
    def recherche() {
        
        if (!params.q?.trim()) {
            return [:]
        }
        try {
            def searchResult = searchableService.search(params.q, params)
            def produits = []
            def acteurs = []
            def typeActeurs = []            
            def typeProjets = []
            def typeProduits = []
            def secteurs = []
            
            searchResult?.results.each() {resultat ->
                def c = resultat.getClass()
                if(c == stratefi.comparateur.Produit) {
                    produits.add(resultat)
                }
                if(c == stratefi.comparateur.Acteur) {
                    acteurs.add(resultat)
                }
                if(c == stratefi.comparateur.TypeActeur) {
                    typeActeurs.add(resultat)
                }
                if(c == stratefi.comparateur.TypeProjet) {
                    typeProjets.add(resultat)
                }
                if(c == stratefi.comparateur.TypeProduit) {
                    typeProduits.add(resultat)
                }
                if(c == stratefi.comparateur.Secteur) {
                    secteurs.add(resultat)
                }
            }
            return [q : params.q, searchResult: searchResult, acteurs : acteurs, produits : produits,
            secteurs : secteurs, typeProduits : typeProduits, typeProjets : typeProjets, typeActeurs : typeActeurs]
        } catch (SearchEngineQueryParseException ex) {
            return [parseException: true]
        }
    }
    
}
