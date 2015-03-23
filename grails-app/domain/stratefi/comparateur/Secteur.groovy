package stratefi.comparateur

class Secteur {
    
    static searchable = true
    
    String nom
    Double numero
    String description
    String nomSEO
    //    static hasMany = [produits : Produit]

    boolean publie
    
    String toString(){
        return nom
    }
    
    static constraints = {
        // produits nullable : true
        nomSEO nullable : true, unique : true        
     description nullable:true
    }
    static mapping = {
        description sqlType:"text"
    }
}
