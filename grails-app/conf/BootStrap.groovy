import entreprises.*
import connection.*
import stratefi.*
import planification.*
import compte.*
import referentiel.*

class BootStrap {
    
    def initialisationService

    def init = { servletContext ->
        environments
          {
            development
            {
    }
    }
    
        if(Entreprise.findByNom("test")) {
            
        }
        else {
        def entreprise = new Entreprise(nom : "test") 
        println("vant save de entrerprise)")
        entreprise.save(failOnError : true, flush : true)
        println(entreprise)
        
        //création des PDP et pic initiaux
         initialisationService.initEntreprise(entreprise)
        
        
        
        def userRole = Authority.findByAuthority('ROLE_USER') ?: new Authority(authority: 'ROLE_USER').save(flush: true)
        def adminRole = Authority.findByAuthority('ROLE_ADMIN') ?: new Authority(authority: 'ROLE_ADMIN').save(flush: true)
        
        def testUser = new User(username: 'n.lakhmissi@gmail.com', password: 'test', entreprise : entreprise, prenom : 'nabil', nom : 'lakhmissi')
        testUser.enabled = true
        testUser.save(flush : true)
        // enabled true
        UserAuthority.create(testUser, adminRole, true)
        
        def demande = new Demande(nom : "creation boite", user : testUser, entreprise : entreprise, 
                                   description : "Marketplace du financement des PME",  urlSite : "", besoinMarche : "Simplification de l'accès au financement pour les PME",
                               disruption : "nouveau business model et nouvelle solution", montantRecherche : 100000, publie : true)
        
       demande.save()
                println(demande)
                
                def demande2 = new Demande(nom : "développement solution mobile", user : testUser, entreprise : entreprise, 
                                   description : "Canal mobile",  urlSite : "", besoinMarche : "Simplification de l'accès au financement pour les PME",
                               disruption : "nouveau business model et nouvelle solution", montantRecherche : 50000, publie : true)
        
       demande2.save()
             
       def reponse = new Reponse(demande : demande, taux : 2.9, montant : 10000)
       reponse.save()
       
       def reponse2 = new Reponse(demande : demande, taux : 3.1, montant : 35000)
       reponse2.save()
        
//        def capital = new Pcg(nom : "capital" , numero : 101).save()
//        def immo = new Pcg(nom : "immobilisation" , numero : 201).save()
//        
//        def pic2014 = Pic.findByAnneeAndEntreprise(2014, entreprise)
//        
//        def pdpMars = Pdp.findByMoisAndPic(3, pic2014)
//        def pdpAvril = Pdp.findByMoisAndPic(4, pic2014)
//        def pdpMai = Pdp.findByMoisAndPic(5, pic2014)
//        
//        println(pdpMars)
//        
//        def unApport = new Apport(valeur : 120 , associe : "101", typeApport : "numeraire", indicateur : capital, pourcentage : 25)
//        unApport.entreprise = entreprise
//        unApport.save(failOnError : true, flush : true)
//        
//        println(unApport)
//        
//        def mouvement = new Mouvement()
//        mouvement.pdp = pdpMars
//        mouvement.ligne = (Ligne)unApport
//        mouvement.montant = 60
//        
//        mouvement.save(failOnError : true, flush : true)
//        
//        def mouvement2 = new Mouvement()
//        mouvement2.pdp = pdpAvril
//        mouvement2.ligne = (Ligne)unApport
//        mouvement2.montant = 60
//        
//        mouvement2.save(failOnError : true, flush : true)
//        
//        
        
    }
    }
    def destroy = {
    }
}
