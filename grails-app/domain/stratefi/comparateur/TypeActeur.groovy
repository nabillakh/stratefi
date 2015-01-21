package stratefi.comparateur

class TypeActeur {
    
    String nom
    Double numero
    static hasMany = [acteurs : Acteur]
    // TypeClient typeClient

    String nomSEO
    
    static constraints = {
    }
}
