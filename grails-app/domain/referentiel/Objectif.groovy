package referentiel


class Objectif {
    
    String nom
    
    static hasMany = [listeActions : TypeAction]
    

    static constraints = {
        listeActions nullable : true
    }
}
