package stratefi.comparateur

class TypeProduit {
    
    static searchable = true
    
    String nom
    // String description
    Double numero
    
    String description
    
    static hasMany = [produits : Produit]

    String nomSEO
    
    boolean publie
    
    String toString(){
        return nom
    }
    
    static constraints = {
        produits nullable : true
        nomSEO nullable : true, unique : true
        description nullable:true
    }
    static mapping = {
        description sqlType:"text"
    }
}
