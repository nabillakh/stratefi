package planification

import referentiel.*

class Action {
    
    String nom
    String description
    
    Projet projet
    
    TypeAction type
    
    static hasMany = [lignes : Ligne]

    static constraints = {
        type nullable : true
    }
    
    static mappedBy = [lignes : 'action']
}
