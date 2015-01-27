package stratefi.comparateur

class TypeActeur {
    
    static searchable = true
    
    String nom
    Double numero
    static hasMany = [acteurs : Acteur]
    // TypeClient typeClient

    String nomSEO
    
    static constraints = {
        acteurs nullable : true
        nomSEO nullable : true, unique : true
    }
}
