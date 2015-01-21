package planification

import referentiel.*
import entreprises.*

class Projet {
    
    String nom
    String description
    
    Entreprise entreprise
    
    Objectif objectif
    static hasMany = [actions : Action]
    
    Pdp pdpDebut
    Pdp pdpFin

    static constraints = {
        actions nullable : true
        objectif nullable : true
        description nullable : true
        entreprise nullable : true
        pdpDebut nullable : true
        pdpFin nullable : true
    }
}
