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
}
