package entreprises

class Etat {
    
    String nom
    Double numero
    static hasMany = [demandes : Demande]
    
    static constraints = {
        demandes nullable : true
    }
}
