package referentiel

class TypeAction {
    
    String nom
    String description
    
    Indicateur indicateurCible
    Double numero
    
    static hasMany = [indicateursImpactes : Indicateur]
    
    static constraints = {
        indicateursImpactes  nullable : true 
        description  nullable : true 
        indicateurCible  nullable : true 
    }
}
