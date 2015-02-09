package stratefi

import grails.transaction.Transactional

import stratefi.comparateur.*

@Transactional
class ComparateurService {

    def concurrentTypeActeur(Acteur acteur) {
        def type = acteur.typeActeur
        def acteurs = []
        def n = 0
        type.acteurs.each() {act ->
            if(act == acteur) {
                
            }
            else {
                if(n < 5) {
                    n += 1 
                    acteurs.add(act)
                }
                
            }
        }
        println(acteurs)
        return acteurs        
    }
    
    def getTauxPhrase(Produit produit) {
        def data = new String()
        if(produit.recurrent > 10) {
                data = "10-15%"
        }
        else {
            if(produit.recurrent > 7) {
                data = "5-10%"
            }
            else {
                data = "0-5%"
            }
        }
        return data
    }
    
    
    def getMontantPhrase(Produit produit) {
        def data = new String()
        if(produit.montantMinimum > 0) {
            if(produit.montantMaximum > 0) {
                data = "De " + conversionKE(produit.montantMinimum) + " k€ à " + conversionKE(produit.montantMaximum) + " k€"
            }
            else {
                data = conversionKE(produit.montantMinimum) + " k€ minimum"
            }
        }
        else {
            if(produit.montantMaximum > 0) {
                data = "Moins de " + conversionKE(produit.montantMaximum) + " k€"
            }
            else {
                data = "NC"
            }            
        }
        return data
    }
    def conversionKE(Float nb) {
        return Float.toString(Math.round(nb / 1000))
    } 
    
}
