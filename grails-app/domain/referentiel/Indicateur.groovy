package referentiel

class Indicateur {

    String nom
    String description
    Double numero
    
    static constraints = {
        nom unique : true
        description nullable : true
        numero nullable : true
    }
}
