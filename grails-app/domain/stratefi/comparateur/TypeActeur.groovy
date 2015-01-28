package stratefi.comparateur

class TypeActeur {
    
    static searchable = true
    
    String nom
    Double numero
    static hasMany = [acteurs : Acteur]
    // TypeClient typeClient

    String nomSEO
    
    boolean publie
    
    static constraints = {
        acteurs nullable : true
        nomSEO nullable : true, unique : true
    }
}
