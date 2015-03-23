package stratefi

import grails.transaction.Transactional

import stratefi.comparateur.*
import entreprises.*
import connection.*

@Transactional
class ComparateurService {

    def springSecurityService
    
    def initFormulaire(User userInstance) {
        
        def formulaire = new Formulaire()
        
        formulaire.nomEntreprise = userInstance?.entreprise?.nom
        formulaire.siren = userInstance?.entreprise?.siren
        formulaire.secteur = userInstance?.entreprise?.secteur
        formulaire.proprieteMachine = userInstance?.entreprise?.gestionActif?.proprieteMachine
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
            Entreprise entrepriseInstance
            if(!userInstance?.entreprise) {
                entrepriseInstance = new Entreprise(nom : "Nom de la société").save()
                userInstance.setEntreprise(entrepriseInstance)
                }
                else {
                    entrepriseInstance = userInstance.entreprise
                }
            if(!entrepriseInstance.businessModel) {
                def bm = new BusinessModel(entreprise : entrepriseInstance).save()
                entrepriseInstance.businessModel = bm
            }

            if(!entrepriseInstance.gestionActif) {
                def bm = new GestionActif(entreprise : entrepriseInstance).save()
                entrepriseInstance.gestionActif = bm
            }

        }
        else {
            userInstance = new User()
        }
        
        return userInstance
    }
    
    def rechercheFormulaire(Formulaire formulaire) {
        
        def formulaires = Formulaire.list()
        def formulaires2 = []
        
        def formulaire2 = new Formulaire()
        
                
        
        formulaires.each() {form ->
            if(!form?.secteur) {
                formulaires2.add(form)
            }
            else {  
                if(form?.secteur?.id == formulaire?.secteur?.id) {
                    formulaires2.add(form)
                }
                else {
                }
            }
        }
        
        println(formulaires2)
        if(formulaires2 == null) {
            formulaire2.save()
            formulaires2.add(formulaire2)
        }
        
        
        formulaires.each() {form ->
            if(!form?.typeProjet) {
                formulaires2.add(form)
                
            }
            else {  
                if(form?.typeProjet?.id == formulaire?.typeProjet?.id) {
                    formulaires2.add(form)

                }
                else {
                }
            }
        }
        
        
        if(formulaires2 == null) {
            formulaire2.save()
            formulaires2.add(formulaire2)
        }
        
        
        formulaires.each() {form ->
            if(!form?.typeProduit) {
                    formulaires2.add(form)                
            }
            else {  
                if(form?.typeProduit?.id == formulaire?.typeProduit?.id) {
                    formulaires2.add(form)

                }
                else {
                }
            }
        }
        
        
        if(formulaires2 == null) {
            formulaire2.save()
            formulaires2.add(formulaire2)
        }
        
        if(!formulaires2) {
            formulaire2.secteur = formulaire?.secteur
            formulaire2.typeProjet = formulaire?.typeProjet
            formulaire2.typeProduit = formulaire?.typeProduit
            formulaire2.save()
            formulaires2.add(formulaire2)
        }
        
        
        formulaire2 = formulaires2.get(0)
               
        
        return formulaire2
        
    }
    
    
    def rechercheActeurs(Formulaire formulaire) {
        
        
        def acteurs = []
        def produits = Produit.list()
        def produitTypeProduit = Produit.list()      
        def produitTypeProjet = Produit.list()
        def produitSecteur = Produit.list() 
        
        def formulaireTypeProduit = Formulaire.list()        
        def formulaireTypeProjet = Formulaire.list()
        def formulaireSecteur = Formulaire.list()       
        
        
        if(!formulaire.typeProduit) {
        }
        else {
            formulaireTypeProduit = Formulaire.list(fetch: [typeProduit : formulaire.typeProduit])
            produitTypeProduit = Produit.findAllByTypeProduit(formulaire.typeProduit)
            
        }   
        println(produitTypeProduit)
        
         if(!formulaire.secteur) {            
        }
        else {
            def secteur = formulaire.secteur
            formulaireSecteur = Formulaire.list(fetch: [secteur : formulaire.secteur])
            produitSecteur = Produit.findAll("from Produit c where :secteurs in elements(c.secteurs)", [secteurs:secteur])         
        }
        println(produitSecteur)
        
         if(!formulaire.typeProjet) {         
        }
        else {
            def typeProjet = formulaire.typeProjet
            formulaireTypeProjet = Formulaire.list(fetch: [typeProjet : formulaire.typeProjet])
            produitTypeProjet = Produit.findAll("from Produit c where :typeProjet in elements(c.typeProjet)", [typeProjet:typeProjet])               
        }
        
        println(produitTypeProjet)
              
        def formulaires = []
        formulaires = formulaireTypeProduit?.intersect(formulaireTypeProjet)
        formulaires = formulaires?.intersect(formulaireSecteur)
        
        
        if(formulaires.size() == 0) {
            formulaire.nombreJoue = 1
        }
        else {
            formulaire = formulaires.get(0)
            if(formulaire.nombreJoue) {
                formulaire.nombreJoue = formulaire.nombreJoue + 1            
            }
            else {
                formulaire.nombreJoue = 1                
            }
        }
        
        produits = produitTypeProduit?.intersect(produitTypeProjet)
        produits = produits?.intersect(produitSecteur)
        
        formulaire.save()
        
        println("produit")
        println(produits)
        
        produits.each() {prod ->
            acteurs.add(prod.acteur)
        }
        acteurs.unique()
        
        return acteurs
    }
    
    def enregistrementFormulaire(Formulaire formulaire) {
        
    }
    
    def concurrentTypeActeur(Acteur acteur) {
        def type = acteur?.typeActeur
        def acteurs = []
        def n = 0
        type?.acteurs.each() {act ->
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
