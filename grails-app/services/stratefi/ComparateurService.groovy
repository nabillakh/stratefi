package stratefi

import grails.transaction.Transactional

import stratefi.comparateur.*
import entreprises.*
import connection.*

@Transactional
class ComparateurService {

    def springSecurityService
    
    def initFormulaire(Formulaire formulaire) {
        def userInstance = initUser()
        
        formulaire.nomEntreprise = userInstance.entreprise?.nom
        formulaire.siren = userInstance.entreprise?.siren
        formulaire.secteur = userInstance.entreprise?.secteur
        formulaire.proprieteMachine = userInstance.entreprise?.gestionActif?.proprieteMachine
        formulaire.proprieteLocaux = userInstance.entreprise?.gestionActif?.proprieteLocaux
        formulaire.croissanceCa = userInstance.entreprise?.businessModel?.croissanceCa
        formulaire.volumeClient = userInstance.entreprise?.businessModel?.volumeClient
        formulaire.creanceClient = userInstance.entreprise?.businessModel?.creanceClient
        formulaire.marchandise = userInstance.entreprise?.businessModel?.marchandise
        
        return formulaire
        
    } 
    
    def initUser() {        
        User userInstance
        if (springSecurityService.isLoggedIn()) {
            userInstance = User.get(springSecurityService.principal.id)            
        }
        else {
            userInstance = new User()
        }
        Entreprise entrepriseInstance
        if(!userInstance?.entreprise) {
            entrepriseInstance = new Entreprise(nom : "Nom de la société")
            userInstance.entreprise = entrepriseInstance
            }
            else {
                entrepriseInstance = userInstance.entreprise
            }
            entrepriseInstance.save()
        if(!entrepriseInstance.businessModel) {
            def bm = new BusinessModel(entreprise : entrepriseInstance).save()
            entrepriseInstance.businessModel = bm
        }
        
        if(!entrepriseInstance.gestionActif) {
            def bm = new GestionActif(entreprise : entrepriseInstance).save()
            entrepriseInstance.gestionActif = bm
        }
        
        return userInstance
    }
    
    
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
        
        return acteurs        
    }
    
    def getTauxPhrase(Produit produit) {
        def data = new String()
        if(produit.recurrentMin > 10) {
                data = "10-15%"
        }
        else {
            if(produit.recurrentMin > 7) {
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
