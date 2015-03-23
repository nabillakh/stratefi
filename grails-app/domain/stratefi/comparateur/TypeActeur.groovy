package stratefi.comparateur

class TypeActeur {
    
    static searchable = true
    
    String nom
    Double numero
    static hasMany = [acteurs : Acteur]
    // TypeClient typeClient

    String description
    
    String nomSEO
    
    boolean publie
    
    String toString(){
        return nom
    }
    
    static constraints = {
        acteurs nullable : true
        nomSEO nullable : true, unique : true
        description nullable:true
    }
    static mapping = {
        description sqlType:"text"
    }
}
