package stratefi

import grails.transaction.Transactional
import entreprises.*
import planification.*

@Transactional
class InitialisationService {
   
    def initEntreprise(Entreprise entreprise) {
        def annee = 2015        
        for(Integer n = -2 ; n<4 ; n++) {
            
            def pic = new Pic() 
            pic.annee = annee - n
            pic.entreprise = entreprise
            
            pic.save(flush : true)
            for(Integer mois = 1 ; mois<13 ; mois++) {
                def pdp = new Pdp()
                pdp.mois = mois
                pdp.pic = pic
                pdp.save(flush : true)
            }
        }
        
    }
}
