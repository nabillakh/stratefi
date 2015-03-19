package stratefi

import stratefi.comparateur.*
import org.compass.core.engine.SearchEngineQueryParseException

class ComparateurController {

    def searchableService
    
    
    def index() {
        def produits = Produit.list()
        
        def data = new LinkedHashMap()
        
        def typeProjet = new TypeProjet()
        def secteur = new Secteur()
        def typeProduit = new TypeProduit()
        
        def typesProjet = TypeProjet.list()
        def secteurs = Secteur.list()
        def typeProduits = TypeProduit.list()
        
        def produitTypeProduit = []        
        def produitTypeProjet = []
        def produitSecteur = []      
        
        def nicheTypeProduit = []        
        def nicheTypeProjet = []
        def nicheSecteur = []        
        
            println(" chiffre type prod " + params.typeProduit + 1)    
            if(!params.typeProduit) {
                params.typeProduit = "-1"
            }
        if(params.typeProduit == "-1") {
            nicheTypeProduit = Niche.list()
            produitTypeProduit = Produit.list()
            println("dans if")    
        }
        else {
            println("dans eslse")   
            typeProduit = TypeProduit.get(params.typeProduit)
            nicheTypeProduit = Niche.findAll("from Niche as b where b.typeProduit=?", [typeProduit])
            produitTypeProduit = typeProduit?.produits
            data.put("typeProduit", typeProduit)
        }
        
         if(!params.secteur) {
                params.secteur = "-1"
            }
        if(params.secteur == "-1") {
            nicheSecteur = Niche.list()
            produitSecteur = Produit.list()
        }
        else {
            secteur = Secteur.get(params.secteur)
            nicheSecteur = Niche.findAll("from Niche as b where b.secteur=?", [secteur])
            produitSecteur = Produit.findAll("from Produit c where :nicknames in elements(c.secteurs)", [nicknames:secteur])   
            data.put("secteur", secteur)
        }
        
         if(!params.typeProjet) {
                params.typeProjet = "-1"
            }
        if(params.typeProjet == "-1") {
            nicheTypeProjet = Niche.list()
            produitTypeProjet = Produit.list()
        }
        else {
            typeProjet = TypeProjet.get(params.typeProjet)
            nicheTypeProjet = Niche.findAll("from Niche as b where b.typeProjet=?", [typeProjet])
            produitTypeProjet = Produit.findAll("from Produit c where :nicknames in elements(c.typeProjet)", [nicknames:typeProjet])   
            data.put("typeProjet", typeProjet)          
        }
              
        def niche = new Niche()
        def niches = []
            println(nicheTypeProjet)
            println(nicheTypeProduit)
            println(nicheSecteur)
        niches = nicheTypeProduit?.intersect(nicheTypeProjet)
        niches = niches?.intersect(nicheSecteur)
        println(niches)
        if(niches.size() == 0) {
            bindData(niche, data)
            niche.nombreJoue = 1
        }
        else {
            niche = niches.get(0)
            if(niche.nombreJoue) {
                niche.nombreJoue = niche.nombreJoue + 1            
            }
            else {
                niche.nombreJoue = 1                
            }
        }
        
        produits = produitTypeProduit?.intersect(produitTypeProjet)
        produits = produits?.intersect(produitSecteur)
        
        niche.save()
        println(niche)
        
        
        def acteurs = []
        produits.each() {prod ->
            acteurs.add(prod.acteur)
        }
        acteurs.unique()
        
        [acteurs : acteurs, niche : niche, typesProjet :typesProjet, secteurs : secteurs, typeProduits : typeProduits]
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
