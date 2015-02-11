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
    }
    def destroy = {
    }
}
