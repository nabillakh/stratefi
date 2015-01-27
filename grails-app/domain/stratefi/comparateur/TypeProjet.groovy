package stratefi.comparateur

class TypeProjet {
    
    
    static searchable = true
    
    String nom
    // String description
    Double numero
    //static hasMany = [produits : Produit]
    String nomSEO
    
   // static hasMany = [produits : Produit]
    
    static constraints = {
        //produits nullable : true
        nomSEO nullable : true, unique : true
    }
}
