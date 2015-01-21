package planification

import entreprises.*
import referentiel.*
import compte.*
import stratefi.*

class Ligne { 
    
    Indicateur indicateur 
    Float valeur
    Entreprise entreprise
    Double montant
    
    Action action
    
    static hasMany = [mouvement : Mouvement]
    
    
//    transient afterInsert() {
//        imputationService.dispatch(this)
//    }
    
    
    static constraints = {
       // pdp nullable : true
        valeur defaultValue : 0
        entreprise nullable : true
        mouvement nullable : true
        action nullable : true
        indicateur nullable : true
    }
}
